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
    public partial class ShowThisComplainPS : System.Web.UI.Page
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

        protected void getAcitivity()
        {
            String RefID = (String)Session["RefId"];

            String query = "select * from ComplainActivity where RefID='" + RefID + "'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "ComplainActivity");
            DataTable dt = ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                lblReport.Text = dr[1].ToString();
                if (dr[2].ToString() != "NULL")
                    lblVerified.Text = dr[2].ToString();
                if (dr[3].ToString() != "NULL")
                    lblVigilence.Text = dr[3].ToString();
                if (dr[4].ToString() != "NULL")
                    lblCharge.Text = dr[3].ToString();
                if (dr[5].ToString() != "NULL")
                    lblClosed.Text = dr[4].ToString();

            }


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
                Response.Redirect("Main.aspx");
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
            getAcitivity();
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowComplainPS.aspx");
        }

       
    }
}