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
    public partial class showreportdetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");
        String RefID;

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
            if (!IsPostBack)
            {
                RefID = (String)Session["Ref"];
                Session["RE"] = RefID;

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
                    txtPlace.Text = dr[7].ToString();
                    txtPS.Text = dr[6].ToString();
                    txtStatus.Text = dr[12].ToString();
                    txtSusName.Text = dr[9].ToString();
                    txtSusDetail.Text = dr[10].ToString();
                    txtReport.Text = dr[8].ToString();
                    lblTime.Text += dr[11].ToString();
                }
                getCitizenName();
                if (txtStatus.Text == "NULL" || txtStatus.Text == "VERIFIED")
                {
                    txtCitizenN.Enabled = false;
                    btnUpdate.Visible = true;
                    txtSub.Enabled = true;
                    txtTime.Enabled = true;
                    txtPlace.Enabled = true;
                    //txtPS.Enabled = true;
                    //txtStatus.Enabled = true;
                    txtSusName.Enabled = true;
                    txtSusDetail.Enabled = true;
                    txtReport.Enabled = true;
                }
                else
                    
                {
                    txtCitizenN.Enabled = false;
                    btnUpdate.Visible = false;
                    txtSub.Enabled = false;
                    txtTime.Enabled = false;
                    txtPlace.Enabled = false;
                    txtPS.Enabled = false;
                    txtStatus.Enabled = false;
                    txtSusName.Enabled = false;
                    txtSusDetail.Enabled = false;
                    txtReport.Enabled = false;
                }
            }
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            Response.Redirect("showcomplaincitizen.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            RefID = (String)Session["Ref"];
            String query = "select * from ComplainData";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            Session["da"] = da;
            DataSet ds = new DataSet();
            da.Fill(ds, "ComplainData");
            DataTable dt = ds.Tables[0];
            Session["dt"] = dt;
            foreach (DataRow dr in dt.Rows)
            {
                if (Session["RE"].ToString() == dr[13].ToString())
                {
                    dr.BeginEdit();
                    dr[2] = txtSub.Text;
                    dr[3] = txtTime.Text;
                    dr[7] = txtPlace.Text;
                    dr[9] = txtSusName.Text;
                    dr[10] = txtSusDetail.Text;
                    dr[8] = txtReport.Text;
                    dr.EndEdit();

                }
            }
            SqlCommandBuilder cb = new SqlCommandBuilder((SqlDataAdapter)(Session["da"]));
            da.Update((DataTable)Session["dt"]);
            Response.Redirect("showcomplainCitizen.aspx");
        }
    }
}