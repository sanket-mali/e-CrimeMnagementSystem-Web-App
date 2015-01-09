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
    public partial class AdminEditAccount : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            if (Session["USER"] == null)
                Response.Redirect("Main.aspx");
           

        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            String refI;
            SqlCommand com = new SqlCommand("select RefId from AdminAuth where UserName='" + (String)Session["USER"] + "'", con);
            con.Open();
            refI=(String)com.ExecuteScalar();
            con.Close();
            
            //Panel1.Visible = true;
            if (refI == txtRef.Text)
                Panel1.Visible = true;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Update AdminAuth set Password=@pas where UserName='"+(String)Session["USER"] + "'", con);
            cmd.Parameters.AddWithValue("@pas", txtPass.Text);
           
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("adminhome.aspx");
        }
    }
}