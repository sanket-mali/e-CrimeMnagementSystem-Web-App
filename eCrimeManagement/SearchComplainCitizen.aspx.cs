using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace eCrimeManagement
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            cmbStatus.Visible = false;
            Label10.Visible = false;
            
            cmbComplainId.Visible = false;
            Label3.Visible = false;
            
            if (!IsPostBack)
            {
                cmbType.Items.Add("SELECT TYPE");
                cmbType.Items.Add("BY COMPLIAIN ID");
                cmbType.Items.Add("BY STATUS");

                cmbStatus.Items.Add("SELECT STATUS");
                cmbStatus.Items.Add("NULL");
                cmbStatus.Items.Add("VERIFIED");
                cmbStatus.Items.Add("IN VIGILANCE");
                cmbStatus.Items.Add("CLOSED");
                cmbStatus.Items.Add("CHARGE-SHEET FILED");
                GridView1.Visible = false;
                cmbComplainId.Items.Clear();


                SqlDataAdapter da = new SqlDataAdapter("select ComplainID from ComplainData where UserID='"+(String)Session["USER"]+"'", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DataTable dt = ds.Tables[0];
                foreach (DataRow dr in dt.Rows)
                {
                    cmbComplainId.Items.Add(dr[0].ToString());
                }


            }
        }
        
        protected void BindGridComplainID()
        {
            String query;
            if (cmbComplainId.SelectedItem.ToString().Length != 0)
            {
                query = "select * from ComplainData where UserID='"+(String)Session["USER"]+"'";

            }
            else
            {
                query = "select * from ComplainData";
            }
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
           
            
            DataSet dsC = new DataSet();//COPY DATASET
            da.Fill(dsC);
            dsC.Clear();//EMPTY DATASET HAVING ds STRUCTURE
            DataTable dt = ds.Tables[0];
            DataTable dtC = dsC.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                if (dr[1].ToString() == cmbComplainId.SelectedItem.ToString())
                {
                    DataRow drC = dtC.NewRow();//CREATING NEW ROW OF dtC DATATABLE
                    drC[0] = dr[0];//Putting the values from dt DataTable
                    drC[1] = dr[1];
                    drC[2] = dr[2];
                    drC[3] = dr[3];
                    drC[4] = dr[4];
                    drC[5] = dr[5];
                    drC[6] = dr[6];
                    drC[7] = dr[7];
                    drC[8] = dr[8];
                    drC[9] = dr[9];
                    drC[10] = dr[10];
                    drC[11] = dr[11];
                    drC[12] = dr[12];
                    drC[13] = dr[13];
                    dtC.Rows.Add(drC);
                }
               
            }
            GridView1.Visible = true;
            GridView1.DataSource = dsC;
            GridView1.DataBind();
         }


        protected void BindGridStatus()
        {
            String query;
            if (cmbStatus.SelectedItem.ToString().Length != 0)
            {
                query = "select * from ComplainData where UserID='" + (String)Session["USER"] + "'";

            }
            else
            {
                query = "select * from ComplainData";
            }
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);


            DataSet dsC = new DataSet();
            da.Fill(dsC);
            dsC.Clear();
            DataTable dt = ds.Tables[0];
            DataTable dtC = dsC.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                if (cmbStatus.SelectedIndex != 4)
                {
                    if (dr[12].ToString() == cmbStatus.SelectedItem.ToString())
                    {
                        DataRow drC = dtC.NewRow();
                        drC[0] = dr[0];
                        drC[1] = dr[1];
                        drC[2] = dr[2];
                        drC[3] = dr[3];
                        drC[4] = dr[4];
                        drC[5] = dr[5];
                        drC[6] = dr[6];
                        drC[7] = dr[7];
                        drC[8] = dr[8];
                        drC[9] = dr[9];
                        drC[10] = dr[10];
                        drC[11] = dr[11];
                        drC[12] = dr[12];
                        drC[13] = dr[13];
                        dtC.Rows.Add(drC);
                    }
                }
                else
                {
                    if (dr[12].ToString()!="NULL")
                    {
                        DataRow drC = dtC.NewRow();
                        drC[0] = dr[0];
                        drC[1] = dr[1];
                        drC[2] = dr[2];
                        drC[3] = dr[3];
                        drC[4] = dr[4];
                        drC[5] = dr[5];
                        drC[6] = dr[6];
                        drC[7] = dr[7];
                        drC[8] = dr[8];
                        drC[9] = dr[9];
                        drC[10] = dr[10];
                        drC[11] = dr[11];
                        drC[12] = dr[12];
                        drC[13] = dr[13];
                        dtC.Rows.Add(drC);
                    }

                }

            }
            GridView1.Visible = true;
            GridView1.DataSource = dsC;
            GridView1.DataBind();

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            int ch = cmbType.SelectedIndex;

            if (IsPostBack)
            {
                   switch (ch)
                {
                   
                    case 1://SEARCH BY COMPLAIN ID
                        cmbComplainId.Visible = true;
                         Label3.Visible = true;
                        BindGridComplainID();
                        
                          
                        break;

                    case 2://SEARCH BY STATUS
                    cmbStatus.Visible = true;
                    Label10.Visible = true;
                        BindGridStatus();
                           
                        break;
                }
            }

                }

        protected void cmbType_SelectedIndexChanged(object sender, EventArgs e)
        {
           if (cmbType.SelectedIndex == 0)
            {
                cmbStatus.Visible = false;
                Label10.Visible = false;
                
                cmbComplainId.Visible = false;
                Label3.Visible = false;
                
            }
            
     
                if (cmbType.SelectedIndex == 1)
                {

                    cmbComplainId.Visible = true;
                    Label3.Visible = true;
                    cmbStatus.Visible = false;
                    Label10.Visible = false;
                  
                }
                if (cmbType .SelectedIndex ==2)
                {

                    cmbStatus.Visible = true;
                    Label10.Visible = true;
                    cmbComplainId.Visible = false;
                    Label3.Visible = false;
                }
                GridView1.Visible = false;
            }

        protected void cmbComplainId_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            
        }

        protected void cmbStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String Ref = GridView1.SelectedRow.Cells[14].Text;
            //int indx = gridCitizen1.SelectedIndex;
            Session["Ref"] = Ref;
            Response.Redirect("showreportdetailsCitizen.aspx");
        }

        }
     }
    

       


           
        
    

    

    
