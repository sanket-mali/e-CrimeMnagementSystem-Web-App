using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace admin
{
    public partial class adminhome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
                Response.Redirect("Main.aspx");

            if (Session["MSG"] == null)
                Label3.Visible = false;
            else
                Label3.Visible = true;
            Label3.Text = (String)Session["MSG"];
            Session["MSG"] = null;

            Label4.Text = "<center><b><u style=color:#ff0000>WELCOME TO eCRIME PORTAL</u></b></center >" + "<p style=color:#0000ff><br />You should maintain the following instructions " +
                 "<br />1. After clicking on the button ADD NEW POLICE STATION a Station Registration Form will be appeared.<br />You have to fill all the field with valid details. " +
                 "<br />2. If you want to update the details of any Police Station or if you want to change the password<br /> of any Police Station,then you have to click on the MANAGE STATIONS button." +
                 "<br />3. The Admin can view all the complains by using SHOW ALL COMPLAINS button." +
                 "<br />4. The Admin can view the details of Citizen by using SHOW ALL CITIZEN button,<br />where you can search a Citizen by his/her User ID or by State or by District or by Police Stations." +
                 "<br />5. Admin can close a FIR file by clicking on the CLOSE A FILE button." +
                 "<br />6. If you want change your Password you can use the EDIT ACCOUNT button.</p>";
        }

       
    }
}