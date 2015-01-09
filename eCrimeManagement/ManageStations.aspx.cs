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
    public partial class ManageStations : System.Web.UI.Page
    {


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchStation.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageStationAuth.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String StnID = GridView1.SelectedRow.Cells[1].Text;
            Session["StnID"] = StnID;
            Response.Redirect("UpdateStationDetails.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
                Response.Redirect("Main.aspx");
        }
    }
}