using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eCrimeManagement
{
    public partial class CitizenHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //String User = (String);
            if (Session["USER"] == null)
                Response.Redirect("Main.aspx");
            Label3.Visible = false;
            if (Session["MSG"] == null)
                Label3.Visible = false;
            else
            {
                Label3.Visible = true;
                Label3.Text = (String)Session["MSG"];
                Session["MSG"] = null;
            }

            Label4.Text = "<center><b><u style=color:#ff0000>WELCOME TO eCRIME PORTAL</u></b></center >" + "<p style=color:#0000ff><br />You should maintain the following instructions " +
                "<br />1. After clicking on the button ADD NEW COMPLAIN a Complain Registration Form will be appeared.<br />You have to fill all the field with valid details. " +
                "<br />2. You can see all your complains by clicking on SHOW SUBMITTED COMPLAIN button." +
                "<br />3. You can search complains using Complain ID or Complain Status by SEARCH COMPLAIN button." +
                "<br />4. If you want change your Password you can use the EDIT ACCOUNT button.<br />Also if you want to update your details then please contact to the nearby Police Station.</p>";
        }
    }
}