using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eCMS007
{
    public partial class Station : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUser.Text = (String)Session["USER"];
        }

        protected void btnCloseFile_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangeStatusPS.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["USER"] = null;
            Response.Redirect("Main.aspx");
        }

        protected void btnShowComplains_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowComplainPS.aspx");
        }

        protected void btnVerify_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerifyComplain.aspx");
        }

        protected void btnChangeStatus_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangeStatusPS.aspx");
        }

        protected void btnCitizenAuthenticate_Click(object sender, EventArgs e)
        {
            Response.Redirect("CitizenAuthenticatePS.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("stationhome.aspx");
        }

      

    }
}