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
    public partial class SearchComplainAdmin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
                Response.Redirect("Main.aspx");

            if (!IsPostBack)
            {
                
                cmbType.Items.Add("SELECT TYPE");
                cmbType.Items.Add("BY COMPLAIN");
                cmbType.Items.Add("BY DISTRICT");

                GridView1.Visible = false;

                Label5.Visible = false;
                txtID.Visible = false;
                cmbState.Visible = false;
                cmbDistrict.Visible = false;
                cmbPS.Visible = false;
                Label6.Visible = false;

                cmbState.Items.Clear();
                SqlCommand cmdState = new SqlCommand("Select state from state", con);
                con.Open();
                SqlDataReader dr = cmdState.ExecuteReader();
                while (dr.Read())
                {
                    cmbState.Items.Add(dr[0].ToString());
                }
                con.Close();
            }

        }

        protected void cmbState_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmbDistrict.Items.Clear();


            int indx = cmbState.SelectedIndex + 1;
            SqlCommand cmd1 = new SqlCommand("select District from District where id=@var", con);
            cmd1.Parameters.AddWithValue("@var", indx.ToString());
            con.Open();
            SqlDataReader dr = cmd1.ExecuteReader();

            while (dr.Read())
            {
                cmbDistrict.Items.Add(dr[0].ToString());

            }
            con.Close();
        }

        protected void cmbDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmbPS.Items.Clear();
            SqlCommand cmd = new SqlCommand("select StationName from StationDetails where District=@var", con);
            cmd.Parameters.AddWithValue("@var", cmbDistrict.SelectedItem.ToString());
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                cmbPS.Items.Add(dr[0].ToString());
            }
            con.Close();
        }

        protected void BindGridPS()
        {
            String query;
            if ((cmbPS.SelectedItem.ToString()).Length!= 0)
            {
                query = "select * from ComplainData where PoliceStation= '" + cmbPS.SelectedItem.ToString() + "'";

            }
            else
            {
                query = "select * from ComplainData";
            }
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.Visible = true;
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void BindGridName()
        {
            String query;
            if (txtID.Text.Length != 0)
            {
                query = "select * from ComplainData where ComplainID= '" + txtID.Text + "'";

            }
            else
            {
                query = "select * from ComplainData";
            }
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.Visible = true;
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
             int ch = cmbType.SelectedIndex;

             if (IsPostBack)
             {


                 switch (ch)
                 {

                     case 1://SEARCH BY NAME
                         BindGridName();
                         break;
                     case 2:
                         if(cmbPS.SelectedItem!=null)
                             BindGridPS();
                        break;
                 }
             }
        }

        protected void cmbType_SelectedIndexChanged(object sender, EventArgs e)
        {
            
                int ch = cmbType.SelectedIndex;
                switch (ch)
                {
                case 1:
                {
                    Label5.Visible=true;
                    txtID.Visible = true;
                    cmbState.Visible=false;
                    cmbDistrict.Visible=false;
                    cmbPS.Visible=false;
                    Label6.Visible=false;
                }
                break;
                case 2:
                {
                    cmbState.Visible=true;
                    cmbDistrict.Visible=true;
                    cmbPS.Visible=true;
                    Label6.Visible=true;
                    txtID.Visible=false;
                    Label5.Visible=false;
                }
                break;

                }
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string RefID = GridView1.SelectedRow.Cells[14].Text;
            
            Session["RefId"] = RefID;

            Response.Redirect("ShowComplainAdThis.aspx");
        }


    }
}