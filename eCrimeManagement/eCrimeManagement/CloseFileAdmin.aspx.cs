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
    public partial class CloseFileAdmin : System.Web.UI.Page
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
                cmbType.Items.Add("BY USER ID");

                GridView1.Visible = false;
            }
        }
        protected void BindGridComplain()
        {
            String query;
            if (txtComplainID.Text.Length != 0)
            {
                query = "select * from ComplainData where ComplainID= '" + txtComplainID.Text + "'";

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

        protected void BindGridUser()
        {
            String query;
            if (txtUserID.Text.Length != 0)
            {
                query = "select * from ComplainData where UserID= '" + txtUserID.Text + "'";

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

        protected void Button9_Click(object sender, EventArgs e)
        {
            int ch = cmbType.SelectedIndex;

            if (IsPostBack)
            {


                switch (ch)
                {

                    case 1://SEARCH BY COMPLAIN ID
                        BindGridComplain();
                        break;
                    case 2://SEARCH BY COMPLAIN I
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
            
            Response.Redirect("CloseThisFileAdmin.aspx");
            //txtUserID.Text = name + ix.ToString();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {

        }
      
    }
}