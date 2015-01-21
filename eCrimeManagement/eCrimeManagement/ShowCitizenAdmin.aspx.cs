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
    public partial class ShowCitizen : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
                Response.Redirect("Main.aspx");

            if (!IsPostBack)
            {

                cmbType.Items.Add("SELECT TYPE");
                cmbType.Items.Add("BY USER ID");
                cmbType.Items.Add("STATE");
                cmbType.Items.Add("BY DISTRICT");
                cmbType.Items.Add("BY AUTHENTICATED PS");

                txtUserID.Visible = false;
                cmbState.Visible = false;
                cmbDist.Visible = false;
                cmbPS.Visible = false;
                Label4.Visible = false;
                Label6.Visible = false;
                Label7.Visible = false;
                Label8.Visible = false;

                GridView1.Visible = false;


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

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCitizenAuthAdmin.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            

            //Response.Redirect("ShowComplainAdThis.aspx");
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string userID = GridView1.SelectedRow.Cells[1].Text;
            int indx = GridView1.SelectedIndex;
            Session["userID"] = userID;
            Response.Redirect("ShowThisCitizenDetails.aspx");
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

        protected void cmbDist_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmbPS.Items.Clear();
            SqlCommand cmd = new SqlCommand("select StationName from StationDetails where District=@var", con);
            cmd.Parameters.AddWithValue("@var", cmbDist.SelectedItem.ToString());
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                cmbPS.Items.Add(dr[0].ToString());
            }
            con.Close();
        }
        protected void BindGridUID()
        {
            String query;
            if (txtUserID.Text.Length != 0)
            {
                query = "select * from CitizenDetails where UserID= '" + txtUserID.Text + "'";

            }
            else
            {
                query = "select * from CitizenDetails";
            }
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.Visible = true;
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void BindGridPS()
        {
            String query;
            if ((cmbPS.SelectedItem.ToString()).Length != 0)
            {
                query = "select * from CitizenDetails where AuthenticatedPS= '" + cmbPS.SelectedItem.ToString() + "'";

            }
            else
            {
                query = "select * from CitizenDetails";
            }
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.Visible = true;
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void BindGridDist()
        {
            String query;
            if ((cmbDist.SelectedItem.ToString()).Length != 0)
            {
                query = "select * from CitizenDetails where District= '" + cmbDist.SelectedItem.ToString() + "'";

            }
            else
            {
                query = "select * from CitizenDetails";
            }
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.Visible = true;
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void BindGridState()
        {
            String query;
            if ((cmbDist.SelectedItem.ToString()).Length != 0)
            {
                query = "select * from CitizenDetails where State= '" + cmbState.SelectedItem.ToString() + "'";

            }
            else
            {
                query = "select * from CitizenDetails";
            }
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.Visible = true;
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void cmbPS_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            int ch = cmbType.SelectedIndex;

            if (IsPostBack)
            {


                switch (ch)
                {
                    case 0: Response.Write("PLEASE SELECT TYPE FIRST");
                        break;
                    case 1://SEARCH BY NAME
                        
                        BindGridUID();
                        break;
                    case 2:
                        if(cmbState.SelectedItem!=null)
                            BindGridState();
                        break;

                    case 3:
                        if (cmbDist.SelectedItem != null)
                            BindGridDist();
                        break;

                    case 4:
                        if (cmbPS.SelectedItem != null)
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
                case 0: txtUserID.Visible = true;
                    cmbState.Visible = true;
                    cmbDist.Visible = true;
                    cmbPS.Visible = true;
                    Label4.Visible = true;
                    Label6.Visible = true;
                    Label7.Visible = true;
                    Label8.Visible = true;
                    break;
                case 1: txtUserID.Visible = true;
                    cmbState.Visible = false;
                    cmbDist.Visible = false;
                    cmbPS.Visible = false;
                    Label4.Visible = true;
                    Label6.Visible = false;
                    Label7.Visible = false;
                    Label8.Visible = false;
                    break;
                case 2:
                    txtUserID.Visible = false;
                    cmbState.Visible = true;
                    cmbDist.Visible = false;
                    cmbPS.Visible = false;
                    Label4.Visible = false;
                    Label6.Visible = true;
                    Label7.Visible = false;
                    Label8.Visible = false;
                    break;
            case 3:
                    txtUserID.Visible = false;
                    cmbState.Visible = true;
                    cmbDist.Visible = true;
                    cmbPS.Visible = false;
                    Label4.Visible = false;
                    Label6.Visible = true;
                    Label7.Visible = true;
                    Label8.Visible = false;
                    break;
            case 4: txtUserID.Visible = false;
                    cmbState.Visible = true;
                    cmbDist.Visible = true;
                    cmbPS.Visible = true;
                    Label4.Visible = false;
                    Label6.Visible = true;
                    Label7.Visible = true;
                    Label8.Visible = true;
                    break;

            }
        }
    }
}