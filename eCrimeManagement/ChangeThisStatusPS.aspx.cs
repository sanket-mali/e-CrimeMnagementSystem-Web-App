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
    public partial class ChangeThisStatusPS : System.Web.UI.Page
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

            if (!IsPostBack)
            {
                btnChangeStatus.Visible = false;
                btnOK.Visible = true;
                
                cmbChangeStatus.Items.Add("IN VIGILANCE");
                cmbChangeStatus.Items.Add("CLOSED BY POLICE STATION");
                cmbChangeStatus.Items.Add("CHARGE-SHEET FILED");
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
                string s = txtStatus.Text;
                if (txtStatus.Text != "NULL")
                {
                    if (txtStatus.Text == "CHARGE-SHEET FILED" || s.Substring(0, 6) == "CLOSED")
                    {
                        btnOK.Visible = true;
                        btnChangeStatus.Visible = false;
                        cmbChangeStatus.Visible = false;
                    }
                    else
                    {
                        btnOK.Visible = false;
                        btnChangeStatus.Visible = true;
                        cmbChangeStatus.Visible = true;
                    }
                }
            }
        }

        protected void ComplainActivityStatus()
        {
            if (txtStatus.Text != "NULL")
            {
                String query = "select * from ComplainActivity where RefID='" + (String)Session["RefId"] + "'";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                Session["da"] = da;
                DataSet ds = new DataSet();
                da.Fill(ds, "ComplainActivity");
                DataTable dt = ds.Tables[0];
                Session["dt"] = dt;
                int ch=cmbChangeStatus.SelectedIndex;
                DateTime date = DateTime.Now;
                String dA=date.ToString("dd-mm-yyyy");
                String Tm = date.ToLongTimeString();
                foreach (DataRow dr in dt.Rows)
                {
                    dr.BeginEdit();
                    switch(ch)
                    {
                        case 0:
                            dr[3]=dA+" "+Tm;
                            break;
                        case 1:
                            dr[5] = dA + " " + Tm;
                            break;
                        case 2:
                            dr[4]=dA+" "+Tm;
                            break;
                    }
                    dr.EndEdit();

                }
                SqlCommandBuilder cb = new SqlCommandBuilder((SqlDataAdapter)Session["da"]);
                da.Update((DataTable)Session["dt"]);
            }


        }

        protected void btnChangeStatus_Click(object sender, EventArgs e)
        {
            ComplainActivityStatus();
            String query = "select * from ComplainData where RefID='" + (String)Session["RefId"] + "'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            Session["da"] = da;
            DataSet ds = new DataSet();
            da.Fill(ds, "ComplainData");
            DataTable dt = ds.Tables[0];
            Session["dt"] = dt;
            foreach (DataRow dr in dt.Rows)
            {

                dr.BeginEdit();
                dr[12] =cmbChangeStatus .SelectedItem .ToString () ;
                dr.EndEdit();
                break;


            }
            SqlCommandBuilder cb = new SqlCommandBuilder((SqlDataAdapter)Session["da"]);
            da.Update((DataTable)Session["dt"]);
            ComplainActivityStatus();
            Response.Redirect("ChangeStatusPS.aspx");



        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangeStatusPS.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangeStatusPS.aspx");
        }

       
    }
}