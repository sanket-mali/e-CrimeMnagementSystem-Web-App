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
    public partial class ShowThisCitizenDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
                Response.Redirect("Main.aspx");

            if (!IsPostBack)
            {
            String UserId = (String)Session["userID"];
                
                lblAuth.Visible=false;
                lblStn.Visible=false;
                String query = "select * from CitizenDetails where UserID='" + UserId + "'";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "ComplainData");
                DataTable dt = ds.Tables[0];
                foreach (DataRow dr in dt.Rows)
                {
                    txtUserId.Text=dr[0].ToString();
                    txtName.Text=dr[1].ToString();
                    txtGender.Text=dr[2].ToString();
                    txtDOB.Text=dr[3].ToString();
                    txtAddr.Text=dr[4].ToString()+" State="+dr[5].ToString()+" District="+dr[6].ToString()+" Pin="+dr[7].ToString();
                    txtPhn.Text=dr[8].ToString();
                    txtVoterId.Text=dr[9].ToString();
                    txtPan.Text=dr[10].ToString();
                    txtAadhar.Text=dr[11].ToString();
                    lblStn.Text=dr[12].ToString();
                    txtMail.Text = dr[13].ToString();
                }
                if (lblStn.Text.Length != 0)
                {
                    lblAuth.Visible = true;
                    lblStn.Visible = true;
                }

        }
    }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowCitizenAdmin.aspx");
        }
    }
}