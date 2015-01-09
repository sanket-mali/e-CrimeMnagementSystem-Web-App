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
    public partial class CloseThisFileAdmin : System.Web.UI.Page
    {
        String RefID;
        

        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");

        protected void getCitizenName()
        {
            txtCitizenID.ReadOnly = true;

            String query = "select * from CitizenDetails where UserID='" + txtCitizenID.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "CitizenDetails");
            DataTable dt = ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                txtCitizenN.Text = dr[1].ToString();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["USER"] == null)
                Response.Redirect("Main.aspx");
            btnClose.Visible = false;
            btnOK.Visible = false;

            RefID = (String)Session["RefId"];

            String query = "select * from ComplainData where RefID='" + RefID + "'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "ComplainData");
            DataTable dt = ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {

                txtCitizenID.Text = dr[0].ToString();
                txtComID.Text = dr[1].ToString();
                txtSub.Text = dr[2].ToString();
                txtTime.Text = dr[3].ToString();
                txtPlace.Text = dr[7].ToString() + " State= " + dr[4].ToString() + " Dist= " + dr[5].ToString();
                txtPS.Text = dr[6].ToString();
                txtStatus.Text = dr[12].ToString();
                txtSusName.Text = dr[9].ToString();
                txtSusDetail.Text = dr[10].ToString();
                txtReport.Text = dr[8].ToString();
                lblTime.Text += dr[11].ToString();



            }
            getCitizenName();

            if (txtStatus.Text == "CHARGE-SHEET FILED" || txtStatus.Text == "CLOSED BY ADMIN")
                btnOK.Visible = true;
            else
                btnClose.Visible = true;

        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            
            String query = "select * from ComplainData where RefID='" + RefID + "'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "ComplainData");
            DataTable dt = ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {

                dr.BeginEdit();
                dr[12] = "CLOSED BY ADMIN";
                dr.EndEdit();
                break;


            }
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            da.Update(dt);
            Response.Redirect("CloseFileAdmin.aspx");

        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            Response.Redirect("CloseFileAdmin.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("CloseFileAdmin.aspx");
        }
    }
}

