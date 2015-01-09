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
    public partial class ChangeStatusPS : System.Web.UI.Page
    {
        string StnName;
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
                Response.Redirect("Main.aspx");
            txtComplainID.Visible = false;
            txtUserID.Visible = false;
            Label3.Visible = false; ;
            Label4.Visible = false;
            Button9.Visible = false;

             if (!IsPostBack)
            {

                cmbType.Items.Add("SELECT TYPE");
                cmbType.Items.Add("BY COMPLAIN ID");
                cmbType.Items.Add("BY USER ID");
                if (Session["USER"] == null)
                    Response.Redirect("Main.aspx");
                String UserID = (String)Session["USER"];

                //Getting station id from user name
                SqlCommand cmdU = new SqlCommand("select StationID from StationAuth where StationUserName=@user", con);
                cmdU.Parameters.AddWithValue("@user", UserID);
                con.Open();
                String StnID = cmdU.ExecuteScalar().ToString();
                con.Close();

                //getting station name from Station ID
                SqlCommand cmdID = new SqlCommand("select StationName from StationDetails where StationID=@id", con);
                cmdID.Parameters.AddWithValue("@id", StnID);
                con.Open();
                StnName = (string)cmdID.ExecuteScalar();
                Session["StnNAME"] = StnName;
                con.Close();

                /* //getting all the complains
                string query = "select * from ComplainData where PoliceStation= '" + StnName + "'";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.Visible = true;
                GridView1.DataSource = ds;
                GridView1.DataBind();

                GridView1.Visible = false;*/
            }
        }
        protected void BindGridComplain()
        {
            String query;
            if (txtComplainID.Text.Length != 0)
            {
                query = "select * from ComplainData where PoliceStation='" + (String)Session["StnNAME"] + "'";

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
                if (dr[1].ToString() == txtComplainID.Text)
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
            if (dtC.Rows.Count.ToString() == "0")
            {
                Label5.Text = "Complain not found";
                txtComplainID.Visible = true;
                Label3.Visible = true;
                Button9.Visible = true;

            }
            else
                Label5.Visible = false;
            GridView1.Visible = true;
            GridView1.DataSource = dsC;
            GridView1.DataBind();

        }

         protected void BindGridUser()
        {
            String query;
            if (txtUserID.Text.Length != 0)
            {
                query = "select * from ComplainData where PoliceStation='" + (String)Session["StnNAME"] + "'";

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
                if (dr[0].ToString() == txtUserID.Text)
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
            if (dtC.Rows.Count.ToString() == "0")
            {
                Label5.Text = "Complain not found";
                txtUserID.Visible = true;
                Label4.Visible = true;
                Button9.Visible = true;

            }
            else
                Label5.Visible = false;
            GridView1.Visible = true;
            GridView1.DataSource = dsC;
            GridView1.DataBind();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            int ch = cmbType.SelectedIndex;

            if (IsPostBack)
            {


                switch (ch)
                {

                    case 1://SEARCH BY COMPLAIN ID
                        txtComplainID.Visible = true;
                        Label3.Visible = true;
                        Button9.Visible = true;
                        BindGridComplain();
                        break;
                    case 2://SEARCH BY COMPLAIN I
                        txtUserID.Visible = true;
                        Label4.Visible = true;
                        Button9.Visible = true;
                        BindGridUser();
                        break;
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string RefID = GridView1.SelectedRow.Cells[14].Text;
            int indx = GridView1.SelectedIndex;
            Session["RefId"] = RefID;
            
            Response.Redirect("ChangeThisStatusPS.aspx");
            //txtUserID.Text = name + ix.ToString();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void cmbType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cmbType.SelectedIndex == 0)
            {
                txtComplainID.Visible = false;
            txtUserID.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Button9.Visible = false;
            }
            
     
                if (cmbType.SelectedIndex == 1)
                {

                    txtUserID.Visible = false;
                    Label4.Visible = false;
                    txtComplainID.Visible = true;
                        Label3.Visible = true;
                    Button9 .Visible =true ;
                  
                }
                if (cmbType .SelectedIndex ==2)
                {
                    Label3.Visible = false;
                    txtComplainID.Visible = false;
                     txtUserID.Visible = true;
                        Label4.Visible = true;
                    Button9 .Visible =true;
                    
                }
                GridView1.Visible = false;
            }

       
      
    }
}
    
