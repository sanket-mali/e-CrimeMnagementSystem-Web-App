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
    public partial class ChangeStnPassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["USER"] == null)
                Response.Redirect("Main.aspx");
            if (!IsPostBack)
            {
                Panel1.Visible = false;
                txtStnID.Text = (String)Session["StnID"];
                SqlDataAdapter da = new SqlDataAdapter("select * from StationDetails where StationID='" + (String)Session["StnID"] + "'", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DataTable dt = ds.Tables[0];
                foreach (DataRow dr in dt.Rows)
                {
                    txtStnN.Text = dr[1].ToString();
                }
                Label5.Visible = false;
                txtRef.Visible = false;
                btnSubmit.Visible = false;
               
            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button9_Click1(object sender, EventArgs e)
        {
            Label5.Visible = true;
            txtRef.Visible = true;
            btnSubmit.Visible = true;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from AdminAuth where UserName='" + (String)Session["USER"] + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                
                if (txtRef.Text.ToString() == dr[2].ToString().Trim())
                {
                    
                    Panel1.Visible = true;
                    break;
                }
                
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from StationAuth where StationID='" + (String)Session["StnID"] + "'", con);
            Session["da"] = da;
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            Session["dt"] = dt;
            foreach (DataRow dr in dt.Rows)
            {
                dr.BeginEdit();
                dr[2] = txtPass.Text;
                dr.EndEdit();
            }

            SqlCommandBuilder cb = new SqlCommandBuilder((SqlDataAdapter)Session["da"]);
            da.Update((DataTable)Session["dt"]);
            Response.Redirect("ManageStations.aspx");

        }

        protected void txtRef_TextChanged(object sender, EventArgs e)
        {

        }
    }
}