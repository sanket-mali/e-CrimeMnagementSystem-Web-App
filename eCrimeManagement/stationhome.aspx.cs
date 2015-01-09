using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eCMS007
{
    public partial class CloseFile : System.Web.UI.Page
    {
        protected void page(object sender, EventArgs e)
        {
         
         
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
                Response.Redirect("Main.aspx");
            Label4.Text = "<center><b><u style=color:#ff0000;>WELCOME TO e-CRIME PORTAL</u></b></center>" + "<p style=color:#0033cc; ><br />Please follow the instructions mentioned here.. " +
                "<br /> 1.To see all the submitted report click on the SHOW ALL COMPLAIN button" + "     " + "<br /> it will open a page containing all the report in one place." +
                "<br /> 2.Search and verify a particular complain by clicking VERIFY COMPLAIN button." +
                "<br/> 3.Authenticate a citizen, see the citizen credentials. Click the CITIZEN AUTHENTICATE button." +
                "<br /> 4.Change the complain status according to the status of investigation." + "     " + "<br/>" +" Click on the CHANGE COMPLAIN STATUS button." +
                "<br />5. Close a particular Complain file using CLOSE A FILE button. </p>";
        }
    }
}