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
    public partial class WebForm1 : System.Web.UI.Page
    {
        int status;
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=eCM;Integrated Security=True;Pooling=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cmbState.Items.Clear();
                SqlCommand cmdState = new SqlCommand("Select state from state", con);
                con.Open();
                SqlDataReader dr = cmdState.ExecuteReader();
                while (dr.Read())
                {
                    cmbState.Items.Add(dr[0].ToString());
                }
                con.Close();
            }
            

            btnSubmit.Enabled = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String Sids = txtStnID.Text;
            String usrID = txtStnUser.Text;
            /*if (IsPostBack)
            {
                SqlCommand cmdCHK = new SqlCommand("Select * from StationDetails", con);
                SqlCommand cmdUserCHK = new SqlCommand("Select * from StationAuth", con);
                con.Open();
                SqlDataReader dr = cmdCHK.ExecuteReader();
                SqlDataReader udr = cmdUserCHK.ExecuteReader();
                //STATION ID CHECKING FOR DUPLICATE ENTRY
                while (dr.Read())
                {
                    if (Sids == dr[0].ToString())
                    {
                        status = 1;
                        Response.Write("STATION Already Exists!!!");
                       
                        txtError.Text = "STATION ALREADY EXISTS";
                        txtAdd1.Text = "";
                        cmbDistrict.SelectedIndex = -1;
                        cmbState.SelectedIndex = -1;
                        txtStnID.Text = "";
                        txtStnName.Text = "";
                        txtICPhn.Text = "";
                        txtPass.Text = "";
                        txtPassRe.Text = "";
                        txtPhn1.Text = "";
                        txtPhn2.Text = "";
                        txtPin.Text = "";
                        txtStnICID.Text = "";
                        txtStnICName.Text = "";
                        txtStnUser.Text = "";
                        break;
                    }
                }
             
            */

            if (status == 0)
            {
                SqlCommand cmdDetail = new SqlCommand("Insert into StationDetails values(@Stnid,@StnNam,@ICid,@ICNam,@ICPhn,@Add1,@State,@Dist,@Pin,@StnMail,@Phn)", con);
                SqlCommand cmdAuth = new SqlCommand("Insert into StationAuth values(@StnID,@StnUser,@StnPASS)", con);
                cmdDetail.Parameters.AddWithValue("@Stnid", txtStnID.Text);
                cmdDetail.Parameters.AddWithValue("@StnNam", txtStnName.Text);
                cmdDetail.Parameters.AddWithValue("@ICid", txtStnICID.Text);
                cmdDetail.Parameters.AddWithValue("@ICNam", txtStnICName.Text);
                cmdDetail.Parameters.AddWithValue("@ICPhn", txtICPhn.Text);
                cmdDetail.Parameters.AddWithValue("@Pin", txtPin.Text);
                cmdDetail.Parameters.AddWithValue("@Add1", txtAdd1.Text);
                cmdDetail.Parameters.AddWithValue("@State", cmbState.SelectedItem.ToString());
                cmdDetail.Parameters.AddWithValue("@Dist", cmbDistrict.SelectedItem.ToString());
                cmdDetail.Parameters.AddWithValue("@StnMail", txtStnMail.Text);
                cmdDetail.Parameters.AddWithValue("@Phn", txtPhn1.Text + "," + txtPhn2.Text);

                cmdAuth.Parameters.AddWithValue("@StnID", txtStnID.Text);
                cmdAuth.Parameters.AddWithValue("@StnUser", txtStnUser.Text);
                cmdAuth.Parameters.AddWithValue("@StnPASS", txtPass.Text);

                con.Open();
                cmdDetail.ExecuteNonQuery();
                cmdAuth.ExecuteNonQuery();
                Response.Write("Successfully Registered");
                Response.Redirect("Main.aspx");
                con.Close();
            }

        }

        protected void cmbState_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmbDistrict.Items.Clear();
            

                int indx = cmbState.SelectedIndex + 1;
                SqlCommand cmd1 = new SqlCommand("select District from District where id=@var", con);
                cmd1.Parameters.AddWithValue("@var", indx.ToString() );
                con.Open();
                SqlDataReader dr = cmd1.ExecuteReader();
               
                while (dr.Read())
                {
                    cmbDistrict.Items.Add(dr[0].ToString());

                }
                con.Close();
            

        }

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            String Sids = txtStnID.Text;
            String usrID = txtStnUser.Text;
            if (IsPostBack)
            {
                SqlCommand cmdCHK = new SqlCommand("Select * from StationDetails", con);

                con.Open();
                SqlDataReader dr = cmdCHK.ExecuteReader();

                //STATION ID CHECKING FOR DUPLICATE ENTRY
                while (dr.Read())
                {
                    if (Sids == dr[0].ToString())
                    {
                        status = 1;
                        Response.Write("STATION Already Exists!!!");

                        txtError.Text = "STATION ALREADY EXISTS";
                        txtAdd1.Text = "";
                        cmbDistrict.SelectedIndex = -1;
                        cmbState.SelectedIndex = -1;
                        txtStnID.Text = "";
                        txtStnName.Text = "";
                        txtICPhn.Text = "";
                        txtPass.Text = "";
                        txtPassRe.Text = "";
                        txtPhn1.Text = "";
                        txtPhn2.Text = "";
                        txtPin.Text = "";
                        txtStnICID.Text = "";
                        txtStnICName.Text = "";
                        txtStnUser.Text = "";
                        break;
                    }
                }
                if (status == 0)
                {
                    String StnName = txtStnName.Text;
                    String StnID = txtStnID.Text;
                    btnSubmit.Enabled = true;
                    txtStnUser.Text = StnName.Substring(0, 3) + StnID.Substring(0, 8);

                }


            }
        }
    }
}