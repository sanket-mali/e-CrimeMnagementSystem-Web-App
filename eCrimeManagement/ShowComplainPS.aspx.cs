using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace eCrimeManagement
{
    public partial class ShowComplainPS : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
                Response.Redirect("Main.aspx");
            if (!IsPostBack)
            {
                cmbType.Items.Add("SELECT TYPE");
                cmbType.Items.Add("BY COMPLAIN ID");
                cmbType.Items.Add("BY STATUS");

                cmbStatus.Visible = false;
                txtID.Visible = false;
                Label5.Visible = false;
                Label6.Visible = false;
                btnSearch.Visible = false;

                cmbStatus.Items.Add("NULL");
                cmbStatus.Items.Add("VERIFIED");
                cmbStatus.Items.Add("IN VIGILANCE");
                cmbStatus.Items.Add("CLOSED");
                cmbStatus.Items.Add("CHARGE-SHEET FILED");

                //Getting station id from user name
                SqlCommand cmdU = new SqlCommand("select StationID from StationAuth where StationUserName=@user", con);
                cmdU.Parameters.AddWithValue("@user", (String)Session["USER"]);
                con.Open();
                String StnID = cmdU.ExecuteScalar().ToString();
                con.Close();

                //getting station name from Station ID
                SqlCommand cmdID = new SqlCommand("select StationName from StationDetails where StationID=@id", con);
                cmdID.Parameters.AddWithValue("@id", StnID);
                con.Open();
                string StnName = (string)cmdID.ExecuteScalar();
                con.Close();
                Session["StnNam"] = StnName;

                string query = "select * from ComplainData where PoliceStation= '" + StnName + "'";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.Visible = true;
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }

        }




        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string RefID = GridView1.SelectedRow.Cells[14].Text;
            int indx = GridView1.SelectedIndex;
            Session["RefId"] = RefID;
            Response.Redirect("ShowThisComplainPS.aspx");
        }

        protected void cmbType_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ch = cmbType.SelectedIndex;
            
                switch (ch)
                {
                    case 0:
                        cmbStatus.Visible = false;
                        txtID.Visible = false;
                        Label5.Visible = false;
                        Label6.Visible = false;
                        btnSearch.Visible = false;
                        break;

                    case 1: txtID.Visible = true;
                        Label5.Visible = true;
                        cmbStatus.Visible = false;
                        Label6.Visible = false;
                        btnSearch.Visible = true;
                        break;

                    case 2: txtID.Visible = false;
                        Label5.Visible = false;
                        cmbStatus.Visible = true;
                        Label6.Visible = true;
                        btnSearch.Visible = true;
                        break;
                }
            
        }

        protected void BindGridUID()
        {
            string query = "select * from ComplainData where PoliceStation= '" + (String)Session["StnNam"] + "'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);

            DataSet ds = new DataSet();
            da.Fill(ds);
            DataSet dsC = new DataSet();
            da.Fill(dsC);
            dsC.Clear();//EMPTY DATASET OF TYPE ds
            DataTable dt = ds.Tables[0];
            DataTable dtC = dsC.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                if (dr[1].ToString() == txtID.Text)
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
            
            if (txtID.Text.Length != 0)
            {
                GridView1.Visible = true;
                GridView1.DataSource = dsC;
                GridView1.DataBind();

            }
            else
            {
                GridView1.Visible = true;
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
           
        }

        protected void BindGridStatus()
        {
            string query = "select * from ComplainData where PoliceStation= '" + (String)Session["StnNam"] + "'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);

            DataSet ds = new DataSet();
            da.Fill(ds);
            DataSet dsC = new DataSet();
            da.Fill(dsC);
            dsC.Clear();//EMPTY DATASET OF TYPE ds
            DataTable dt = ds.Tables[0];
            DataTable dtC = dsC.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                if (cmbStatus.SelectedItem.ToString() != "CLOSED")
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
                    if (dr[12].ToString() != "NULL" && dr[12] != null)
                    {
                        if (dr[12].ToString().Substring(0, 6) == cmbStatus.SelectedItem.ToString())
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

            }

            
                GridView1.Visible = true;
                GridView1.DataSource = dsC;
                GridView1.DataBind();

            

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            int ch = cmbType.SelectedIndex;
            switch (ch)
            {
                case 1: BindGridUID();
                    break;
                case 2:
                    if (cmbStatus.SelectedItem != null)
                        BindGridStatus();
                    break;

            }
        }
       
        
    }
}