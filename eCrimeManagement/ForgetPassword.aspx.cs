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
    public partial class ForgetPassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label9.Visible = false;
            if (!IsPostBack)
            {
                Panel1.Visible = false;

            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Main.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
           
            
                
                int flag1=0,flag2=0;
                String AuthPs="";
                SqlDataAdapter da = new SqlDataAdapter("select MailID,AadharCardNo,AuthenticatedPS from CitizenDetails where UserID='" + txtUNAME.Text + "'", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DataTable dt = ds.Tables[0];
                foreach (DataRow dr in dt.Rows)
                {
                    AuthPs = dr[2].ToString();
                    if (txtMail.Text == dr[0].ToString())
                    {
                        if (txtAadhar.Text == dr[1].ToString())
                        {
                            flag1 = 1;
                        }
                    }

                }
                Label9.Text = "YOU ARE NOT ALLOWED RESET PASSWORD.CONTACT TO NEARBY PS";
               


                SqlDataAdapter da1 = new SqlDataAdapter("select RefID from CitizenAuth where UserID='" + txtUNAME.Text + "'", con);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                DataTable dt1 = ds1.Tables[0];
                foreach (DataRow dr in dt1.Rows)
                {
                    if (txtRefID.Text == dr[0].ToString())
                    {
                        flag2 = 1;
                    }

                }

                if ((flag1 == 1) && (flag2 == 1))
                    Panel1.Visible = true;
                
                if (AuthPs == "")
                {
                    Label9.Visible = true;
                    Panel1.Visible = false;
                }
                else
                {
                    if (AuthPs.Length > 8 && AuthPs.Substring(0, 8) == "REJECTED")
                    {
                        Label9.Visible = true;
                        Panel1.Visible = false;
                    }

                }

                

            
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            SqlDataAdapter da1 = new SqlDataAdapter("select * from CitizenAuth where UserID='" + txtUNAME.Text + "'", con);
            Session["da"] = da1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            DataTable dt1 = ds1.Tables[0];
            Session["dt"] = dt1;
            foreach (DataRow dr in dt1.Rows)
            {
                dr.BeginEdit();
                dr[2] = txtPass.Text;
                dr.EndEdit();
            }
            SqlCommandBuilder cb = new SqlCommandBuilder((SqlDataAdapter)Session["da"]);
            da1.Update((DataTable)Session["dt"]);
            Session["MSG"] = "YOUR PASSWORD IS SUCCESSFULLY RESETED.NOW YOU CAN LOGIN";
            Response.Redirect("Main.aspx");
        }
    }
}