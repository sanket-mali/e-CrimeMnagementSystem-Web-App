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
    public partial class CitizenAuthenticatePS : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
                Response.Redirect("Main.aspx");
            
          
          
            if (!IsPostBack)
            {
                cmbType.Items.Add("SELECT TYPE");
                cmbType.Items.Add("USING REF ID");
                cmbType.Items.Add("USING USER ID");
                btnAuth.Visible = false;
                txtRefId.Visible = false;
                txtUserId.Visible = false;
                Label4.Visible = false;
                Label5.Visible = false;


            }

        }
        protected void byRefId()
        {
            String query;
            int sta = 0;
            if (txtRefId.Text.ToString().Length != 0)
            {
                
               
                query = "select * from CitizenAuth";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DataTable dt = ds.Tables[0];
                foreach (DataRow dr in dt.Rows)
                {
                    if (dr[0].ToString() == txtRefId.Text)
                    {
                        sta = 1;
                        Session["UserID"]=dr[1].ToString();
                       
                        break;
                    }


                }
                if (sta == 1)
                {
                    //Label6.Text = Session["UserID"].ToString();
                    Response.Redirect("CitizenThisAuthenticatePS.aspx");
                }
                else
                {
                    Label6.Visible = true;
                    Label6.Text = "Ref ID not found";

                }
                
            }
           else
            {
                Response .Write ("Please Type Your REF ID");
               
            }

            

        }
        protected void byUserId()
        {
            String query;
            int sta = 0;
            if (txtUserId.Text.ToString().Length != 0)
            {


                query = "select * from CitizenAuth";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DataTable dt = ds.Tables[0];
                foreach (DataRow dr in dt.Rows)
                {
                    if (dr[1].ToString() == txtUserId.Text)
                    {
                        sta = 1;
                        Session["UserID"] = dr[1].ToString();

                        break;
                    }


                }
                if (sta == 1)
                {
                    //Label6.Text = Session["UserID"].ToString();
                    Response.Redirect("CitizenThisAuthenticatePS.aspx");
                }
                else
                {
                    Label6.Visible = true;
                    Label6.Text = "User ID not found";

                }

            }
            else
            {
                Response.Write("Please Type Your User ID");

            }

            

        }

        protected void btnAuth_Click(object sender, EventArgs e)
        {
            int ch = cmbType.SelectedIndex;
            Label6.Visible = false;
            if (IsPostBack)
            {
                   switch (ch)
                {
                   
                    case 1://SEARCH BY REF ID
                       txtRefId.Visible = true;
                         Label4.Visible = true;
                         
                        byRefId();
                        
                          
                        break;

                    case 2://SEARCH BY USER ID
                   txtUserId.Visible = true;
                Label5.Visible = true;
              
                        byUserId();
                           
                        break;
                }
            }

                


           // Response.Redirect("CitizenThisAuthenticatePS.aspx");
        }

        protected void cmbType_SelectedIndexChanged(object sender, EventArgs e)
        {
            
                if (cmbType.SelectedIndex == 0)
                {
                    Label6.Visible = false;
                    txtRefId.Visible = false;
                    txtUserId.Visible = false;
                    Label4.Visible = false;
                    Label5.Visible = false;
                    btnAuth.Visible = false;
                }


                if (cmbType.SelectedIndex == 1)
                {
                    
                    txtRefId.Visible = true;
                    Label4.Visible = true;
                    btnAuth.Visible = true;
                    Label5.Visible = false;
                    txtUserId.Visible = false;

                }
                if (cmbType.SelectedIndex == 2)
                {
                    txtUserId.Visible = true;
                    Label5.Visible = true;
                    btnAuth.Visible = true;
                    Label4.Visible = false;
                    txtRefId.Visible = false;

                }
            
        }


    }
}