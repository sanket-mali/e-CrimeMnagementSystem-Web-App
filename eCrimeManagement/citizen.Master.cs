using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace admin
{
    public partial class citizen : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUser.Text = (String)Session["USER"];
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["USER"] =null;
            Response.Redirect("Main.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchComplainCitizen.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("showcomplainCitizen.aspx");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("SearchComplainCitizen.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("CloseFileCitizen.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditAccountCitizen.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CitizenHome.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("ComplainRegistration.aspx");
        }
    }
}