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
    public partial class VerifyThisComplain : System.Web.UI.Page
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
            btnOk.Visible = false;
           
            if (!IsPostBack)
            {
                RefID = (String)Session["RefId"];
                Session["ref"] = RefID;
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
                if (txtStatus.Text != "NULL")
                {
                    btnVerify.Enabled = false;
                    btnOk.Visible = true;
                }
                else
                    btnVerify.Enabled = true;
            }
        }

        protected void ComplainActivityStatus()
        {
           
                String query = "select * from ComplainActivity where RefID='" + (String)Session["ref"] + "'";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                Session["da"] = da;
                DataSet ds = new DataSet();
                da.Fill(ds, "ComplainActivity");
                DataTable dt = ds.Tables[0];
                Session["dt"] = dt;
                
                DateTime date = DateTime.Now;
                String dA = date.ToString("dd-mm-yyyy");
                String Tm = date.ToLongTimeString();
                foreach (DataRow dr in dt.Rows)
                {
                    dr.BeginEdit();
                    dr[2] = dA + " " + Tm;
                    dr.EndEdit();

                }
                SqlCommandBuilder cb = new SqlCommandBuilder((SqlDataAdapter)Session["da"]);
                da.Update((DataTable)Session["dt"]);
            


        }

        protected void btnVerify_Click(object sender, EventArgs e)
        {
           // int i = 0;
            if (txtStatus.Text == "NULL")
            {

                String re = (String)Session["ref"];
                String query = "select * from ComplainData where RefID='" + re + "'";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                Session["da"] = da;
                DataSet ds = new DataSet();
                da.Fill(ds, "ComplainData");
                DataTable dt = ds.Tables[0];
                Session["dt"] = dt;
                foreach (DataRow dr in dt.Rows)
                {

                    dr.BeginEdit();
                    dr[1] = getComplainId();
                    dr[12] = "VERIFIED";
                    dr.EndEdit();
                    break;


                }
                SqlCommandBuilder cb = new SqlCommandBuilder((SqlDataAdapter)Session["da"]);
                da.Update((DataTable)Session["dt"]);
                ComplainActivityStatus();
                Response.Redirect("VerifyComplain.aspx");
            }
        }
        protected string getComplainId()
        {
            string id = txtPS.Text.Substring(0, 4).ToString() + (String)Session["ref"];
            return id;
            
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerifyComplain.aspx");
        }

    }
}