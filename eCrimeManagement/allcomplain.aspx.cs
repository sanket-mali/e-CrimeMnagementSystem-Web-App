using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace eCrimeManagement
{
    public partial class allcomplain : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select StationID from StationAuth where StationUser=@var1");
            cmd.Parameters.AddWithValue("@var1",Session ["User"].ToString ());
            con.Open();
            string Id = cmd.ExecuteScalar().ToString();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("select District from StationDetails where StationID=@var2");
            cmd1.Parameters.AddWithValue("@var2",Id );
            con.Open();
            Session ["Dist"]=cmd1.ExecuteScalar ();
            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}