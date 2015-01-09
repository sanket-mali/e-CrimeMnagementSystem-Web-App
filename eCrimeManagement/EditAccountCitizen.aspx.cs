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
    public partial class EditAccountCitizen : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
                Response.Redirect("Main.aspx");

            if (!IsPostBack)
            {
                String UserId = (String)Session["userID"];
                String query = "select * from CitizenDetails where UserID='" + Session["USER"] + "'";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "ComplainData");
                DataTable dt = ds.Tables[0];
                foreach (DataRow dr in dt.Rows)
                {
                    txtUserId.Text = dr[0].ToString();
                    txtName.Text = dr[1].ToString();
                    txtGender.Text = dr[2].ToString();
                    txtDOB.Text = dr[3].ToString();
                    txtAddr.Text = dr[4].ToString() + " State=" + dr[5].ToString() + " District=" + dr[6].ToString() + " Pin=" + dr[7].ToString();
                    txtPhn.Text = dr[8].ToString();
                    txtVoterId.Text = dr[9].ToString();
                    txtPan.Text = dr[10].ToString();
                    txtAadhar.Text = dr[11].ToString();
                    
                }
                Panel1.Visible = false;
                Label13.Visible = false;
                txtChk.Visible = false;
                btnChk.Visible = false;
               

            }
        }

        protected void btnChng_Click(object sender, EventArgs e)
        {
            
            Label13.Visible = true;
            txtChk.Visible = true;
            btnChk.Visible = true;
        }

        protected void btnChk_Click(object sender, EventArgs e)
        {
            if (txtChk.Text.Length == 0)
                Label14.Visible = true;
            else
                Label14.Visible = false;

                String query = "select * from CitizenAuth where UserID='" + (String)Session["USER"] + "'";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "CitizenAuth");
                DataTable dt = ds.Tables[0];
                int St = 0;
                foreach (DataRow dr in dt.Rows)
                {
                    if (dr[2].ToString() == txtChk.Text)
                    {
                        Panel1.Visible = true;
                        St = 1;
                        Label13.Visible = false;
                        btnChk.Visible = false;
                        txtChk.Visible = false;
                        break;
                    }

                }
                if (St == 0)
                {
                    Label14.Text = "Incorrect Password";
                    Label14.Visible = true;
                }


        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            String query = "select * from CitizenAuth where UserID='" + (String)Session["USER"] + "'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            Session["da"] = da;
            DataSet ds = new DataSet();
            da.Fill(ds, "CitizenAuth");
            DataTable dt = ds.Tables[0];
            Session["dt"] = dt;
            //int St = 0;
            foreach (DataRow dr in dt.Rows)
            {
                if (dr[1].ToString() == (String)Session["USER"])
                {
                    dr.BeginEdit();
                    dr[2] = txtPASS.Text;
                    dr.EndEdit();
                }

            }
            SqlCommandBuilder cb = new SqlCommandBuilder((SqlDataAdapter)Session["da"]);
            da.Update((DataTable)Session["dt"]);
            Response.Redirect("CitizenHome.aspx");
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            Response.Redirect("CitizenHome.aspx");
        }



    }
}