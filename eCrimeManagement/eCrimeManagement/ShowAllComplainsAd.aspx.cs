using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eCrimeManagement
{
    public partial class ShowAllComplainsAd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
                Response.Redirect("Main.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string RefID = GridView1.SelectedRow.Cells[14].Text;
            int indx = GridView1.SelectedIndex;
            Session["RefId"] = RefID;

            Response.Redirect("ShowComplainAdThis.aspx");
        }
    }
}