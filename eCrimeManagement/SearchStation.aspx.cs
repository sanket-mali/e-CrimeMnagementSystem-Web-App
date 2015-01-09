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
    public partial class SearchStation : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
                Response.Redirect("Main.aspx");

            if (!IsPostBack)
            {
            cmbType.Items.Add("SELECT TYPE");
            cmbType.Items.Add("BY NAME");
            cmbType.Items.Add("BY DISTRICT");

            GridView2.Visible = false;
                
               
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

        /*protected void showTable(DataTable dt)
        {
            if (!IsPostBack)
            {
                GridView2.DataSource = dt;
                GridView2.DataBind();
            }
        }

        protected DataTable GetData()
        {

            SqlDataAdapter da = new SqlDataAdapter("Select * from StationDetails", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "StationDetails");
            DataTable dt = ds.Tables[0];
            return dt;

        }*/

        protected void cmbType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void cmbState_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmbDist.Items.Clear();


            int indx = cmbState.SelectedIndex + 1;
            SqlCommand cmd1 = new SqlCommand("select District from District where id=@var", con);
            cmd1.Parameters.AddWithValue("@var", indx.ToString());
            con.Open();
            SqlDataReader dr = cmd1.ExecuteReader();

            while (dr.Read())
            {
                cmbDist.Items.Add(dr[0].ToString());

            }
            con.Close();
        }

        protected void BindGridName()
        {
            String query;
            if (txtSearch.Text.ToString().Length != 0)
            {
                query = "select * from StationDetails where StationName= '" + txtSearch.Text + "'";
                
            }
            else
            {
                query = "select * from StationDetails";
            }
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView2.Visible = true;
            GridView2.DataSource = ds;
            GridView2.DataBind();

        }

        protected void BindGridDist()
        {
            String query;
            if (cmbDist.SelectedItem.ToString().Length!= 0)
            {
                query = "select * from StationDetails where District= '" + cmbDist.SelectedItem.ToString() + "'";

            }
            else
            {
                query = "select * from StationDetails";
            }
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView2.Visible = true;
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            int ch = cmbType.SelectedIndex;

            if (IsPostBack)
            {
                
                Label6.Text = ch.ToString();
                switch (ch)
                {
                   
                    case 1://SEARCH BY NAME
                        BindGridName();
                        
                          
                        break;

                    case 2://Search by district
                        BindGridDist();
                           
                        break;
                }
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}