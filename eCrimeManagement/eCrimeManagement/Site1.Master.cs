using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace admin
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
                Response.Redirect("Main.aspx");
            

            Label1.Text = (String)Session["USER"];
        }

        protected void btnADDPS_Click(object sender, EventArgs e)
        {
            Response.Redirect("StationRegistration.aspx");
        }

       

        protected void Button8_Click(object sender, EventArgs e)
        {
            Session["USER"] = null;
            Response.Redirect("Main.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageStations.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowAllComplainsAd.aspx");
        }

        protected void Button8_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ShowCitizenAdmin.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchComplainAdmin.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("CloseFileAdmin.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminEditAccount.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminhome.aspx");
        }
        }
    }
