using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace citizen_register
{
    public partial class register : System.Web.UI.Page
    {
        int status;
        int ix = 0;
        int len = 8;


        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            hidenPASS.Visible = false;
            lblRef.Visible = false;
            btnRegister.Enabled = false;
            lblUserStat.Visible = false;
            if (!IsPostBack)
            {
                //cmbState.Items.Clear();
                cmbSx.Items.Add("Male");
                cmbSx.Items.Add("Female");

                SqlCommand cmdState = new SqlCommand("Select state from state", con);
                con.Open();
                SqlDataReader dr = cmdState.ExecuteReader();
                while (dr.Read())
                {
                    cmbState.Items.Add(dr[0].ToString());
                }
                con.Close();
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void cmbState_SelectedIndexChanged(object sender, EventArgs e)
        {

            DropDownList1.Items.Clear();

            int indx = cmbState.SelectedIndex + 1;
            SqlCommand cmd1 = new SqlCommand("select District from District where id=@var", con);
            cmd1.Parameters.AddWithValue("@var", indx.ToString());
            con.Open();
            SqlDataReader dr = cmd1.ExecuteReader();

            while (dr.Read())
            {
                DropDownList1.Items.Add(dr[0].ToString());

            }
            con.Close();


        }

        protected String getREFID()
        {
            String REFID;
            SqlCommand cmdREF = new SqlCommand("Select * from CitizenAuth", con);
            con.Open();
            SqlDataReader drREF = cmdREF.ExecuteReader();
            while (drREF.Read())
            {

                ix++;
            }
            REFID = "c" + ix.ToString();
            return REFID;
        }


        protected String getPASSW()
        {
            String PASS = "";
            const String valid = "abcdefghijklmnopqrstuvwABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
            Random RND = new Random();
            while (0 < len--)
            {
                PASS = PASS + (valid[RND.Next(valid.Length)].ToString());
            }
            return PASS;
        }

        protected void btnUserChk_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
            lblRef.Visible = true;
            lblUserStat.Visible = true;
            lblRef.Text = "YOUR REF ID IS=";
            
                String user = txtUser.Text;
                SqlDataAdapter daA = new SqlDataAdapter("Select * from CitizenAuth", con);

                DataSet ds = new DataSet();
                daA.Fill(ds, "CitizenAuth");
                DataTable dt = ds.Tables[0];
                DataRow dr = dt.NewRow();
                //-----------------CHECK------
                foreach (DataRow dro in dt.Rows)
                {
                    if (dro[1].ToString() == user)
                    {
                        status = 1;
                        txtUser.Text = "";
                        lblUserStat.Text = "CHANGE USER ID";
                        break;
                    }
                }


                if (status == 0)
                {
                    btnRegister.Enabled = true;
                    lblUserStat.Visible = true;
                    lblRef.Visible = true;
                    lblUserStat.Text = "USER ID IS VALID";

                   



                    hidenPASS.Visible = true;
                    hidenPASS.Text = this.getPASSW();


                    lblRef.Text = lblRef.Text + " " + this.getREFID();
                    con.Close();
                }
            }

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                String adha = txtAadhar.Text;

                SqlDataAdapter da = new SqlDataAdapter("Select * from CitizenDetails", con);
                DataSet ds = new DataSet();
                da.Fill(ds, "CitizenDetails");
                DataTable dt = ds.Tables[0];

                //-----------------CHECK ADHAR CARD NO FOR DUPLICATE ENTRY------
                foreach (DataRow dro in dt.Rows)
                {
                    if (dro[11].ToString() == adha)
                    {
                        status = 1;
                        Response.Write("USER ALREADY EXISTS");
                        txtAadhar.Text = "";
                        txtAddr1.Text = "";
                        txtAddr2.Text = "";
                        txtDOB.Text = "";
                        txtMail.Text = "";
                        txtMob1.Text = "";
                        txtMob2.Text = "";
                        txtName.Text = "";
                        txtPan.Text = "";
                        txtPin.Text = "";
                        txtUser.Text = "";
                        txtVote.Text = "";
                        lblRef.Visible = false;
                        lblUserStat.Visible = false;
                        hidenPASS.Visible = false;
                        break;
                    }
                }
                SqlCommandBuilder cb = new SqlCommandBuilder(da);
                da.Update(dt);

                if (status == 0)
                {
                    SqlConnection con1 = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=eCM;Integrated Security=True;Pooling=False");
                    SqlConnection con2 = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=eCM;Integrated Security=True;Pooling=False");
                    SqlCommand cmdDetail = new SqlCommand("Insert into CitizenDetails values(@Userid,@Nam,@Gen,@DOB,@Add,@State,@Dist,@Pin,@Phn,@Vot,@PAN,@Aadhar)", con2);
                    SqlCommand cmdAuth = new SqlCommand("Insert into CitizenAuth values(@RefID,@UserID,@PASS)", con1);
                    cmdDetail.Parameters.AddWithValue("@Userid", txtUser.Text);
                    cmdDetail.Parameters.AddWithValue("@Nam", txtName.Text);
                    cmdDetail.Parameters.AddWithValue("@Gen", cmbSx.SelectedItem.ToString());
                    cmdDetail.Parameters.AddWithValue("@DOB", txtDOB.Text);
                    cmdDetail.Parameters.AddWithValue("@Add", txtAddr1.Text + " > " + txtAddr2.Text);
                    cmdDetail.Parameters.AddWithValue("@State", cmbState.SelectedItem.ToString());
                    cmdDetail.Parameters.AddWithValue("@Dist", DropDownList1.SelectedItem.ToString());
                    cmdDetail.Parameters.AddWithValue("@Pin", txtPin.Text);
                    cmdDetail.Parameters.AddWithValue("@Phn", txtMob1.Text + " " + txtMob2.Text);
                    cmdDetail.Parameters.AddWithValue("@Vot", txtVote.Text);
                    cmdDetail.Parameters.AddWithValue("@PAN", txtPan.Text);
                    cmdDetail.Parameters.AddWithValue("@Aadhar", txtAadhar.Text);

                    cmdAuth.Parameters.AddWithValue("@RefID", this.getREFID());
                    cmdAuth.Parameters.AddWithValue("@UserID", txtUser.Text);
                    cmdAuth.Parameters.AddWithValue("@PASS", this.getPASSW());
                    con2.Open();
                    cmdDetail.ExecuteNonQuery();
                    con2.Close();
                    con1.Open();
                    cmdAuth.ExecuteNonQuery();
                    con1.Close();
                    Response.Write("Successfully Registered");
                    Response.Redirect("Main.aspx");
                    
                }
            }




        }
    }
}