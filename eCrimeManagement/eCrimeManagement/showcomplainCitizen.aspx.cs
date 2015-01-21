using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace eCrimeManagement
{
    public partial class show_complaincitizen : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String query;
                query = "select * from ComplainData where UserID= '" + (String)Session["USER"] + "'";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.Visible = true;
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

       

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String Ref = GridView1.SelectedRow.Cells[14].Text;
            //int indx = gridCitizen1.SelectedIndex;
            Session["Ref"] = Ref;
            Response.Redirect("showreportdetailsCitizen.aspx");
        }
      
    }
}