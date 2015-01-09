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
    public partial class CitizenThisAuthenticatePS : System.Web.UI.Page
    {
        String UserID;
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
             if (Session["UserID"] == null)
                Response.Redirect("Main.aspx");
            if (!IsPostBack)
            {
                lblSta.Visible = false;
                lblSta1.Visible = false;
                btnAuth.Visible = false;
                btnReject.Visible = false;
                String AuthPS="";
                UserID = (String)Session["UserID"];
                Session["userid"] = UserID ;
                String query = "select * from CitizenDetails where UserID='" + UserID+ "'";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "CitizenDetails");
                DataTable dt = ds.Tables[0];
                txtMail.Enabled = false;

                foreach (DataRow dr in dt.Rows)
                {

                    txtUserId.Text =dr[0].ToString();
                    txtName.Text = dr[1].ToString();
                    txtGender.Text = dr[2].ToString();
                    txtDOB.Text = dr[3].ToString();
                    txtAddr.Text = dr[4].ToString() + " State= " + dr[5].ToString() + " Dist= " + dr[6].ToString() + " Pin= " + dr [7].ToString ();
                    txtPhn.Text = dr[8].ToString();
                    txtVoterId.Text = dr[9].ToString();
                    txtPan.Text = dr[10].ToString();
                    txtAadhar.Text = dr[11].ToString();
                    txtMail.Text = dr[13].ToString();
                    if(dr[12]!=null)
                    {
                        btnAuth.Visible=false;
                        btnReject.Visible=false;
                        AuthPS = dr[12].ToString();
                    }


                }

                if (AuthPS == "")
                {
                    btnOk.Visible = false;
                    btnAuth.Visible = true;
                    btnReject.Visible = true;
                }
                else
                {
                    lblSta1.Visible = true;
                    lblSta.Text = AuthPS;
                    lblSta.Visible = true;
                }
                String query1 = "select * from CitizenAuth where UserID='" + UserID+ "'";
                SqlDataAdapter da1 = new SqlDataAdapter(query1, con);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1, "CitizenAuth");
                DataTable dt1 = ds1.Tables[0];
                foreach (DataRow dr1 in dt1.Rows)
                {
                    txtPassW.Text = dr1[2].ToString();
                }
               
            }
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            Response.Redirect("CitizenAuthenticatePS.aspx");
        }

        protected void btnAuth_Click(object sender, EventArgs e)
        {

                 //Getting station id from user name
                SqlCommand cmdU = new SqlCommand("select StationID from StationAuth where StationUserName=@user", con);
                cmdU.Parameters.AddWithValue("@user", (String)Session["USER"]);
                con.Open();
                String StnID = cmdU.ExecuteScalar().ToString();
                con.Close();

                //getting station name from Station ID
                SqlCommand cmdID = new SqlCommand("select StationName from StationDetails where StationID=@id", con);
                cmdID.Parameters.AddWithValue("@id", StnID);
                con.Open();
                string StnName = (string)cmdID.ExecuteScalar();
                Session["StnName"] = StnName;
                con.Close();


                String query = "select * from CitizenDetails where UserID='" + (String)Session["userid"]+ "'";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                Session["da"]=da;
                DataSet ds = new DataSet();
                da.Fill(ds, "CitizenDetails");
                DataTable dt = ds.Tables[0];
                Session["dt"]=dt;
                foreach (DataRow dr in dt.Rows)
                {
                    dr.BeginEdit();
                    dr[12] = Session["StnName"];
                    dr.EndEdit();
                }
                SqlCommandBuilder cb = new SqlCommandBuilder((SqlDataAdapter)Session["da"]);
                
                da.Update((DataTable)Session["dt"]);
                Response.Redirect("stationhome.aspx");

        }

        protected void btnReject_Click(object sender, EventArgs e)
        {
            //Getting station id from user name
            SqlCommand cmdU = new SqlCommand("select StationID from StationAuth where StationUserName=@user", con);
            cmdU.Parameters.AddWithValue("@user", (String)Session["USER"]);
            con.Open();
            String StnID = cmdU.ExecuteScalar().ToString();
            con.Close();

            //getting station name from Station ID
            SqlCommand cmdID = new SqlCommand("select StationName from StationDetails where StationID=@id", con);
            cmdID.Parameters.AddWithValue("@id", StnID);
            con.Open();
            string StnName = (string)cmdID.ExecuteScalar();
            Session["StnName"] = StnName;
            con.Close();


            String query = "select * from CitizenDetails where UserID='" + (String)Session["userid"] + "'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            Session["da"] = da;
            DataSet ds = new DataSet();
            da.Fill(ds, "CitizenDetails");
            DataTable dt = ds.Tables[0];
            Session["dt"] = dt;
            foreach (DataRow dr in dt.Rows)
            {
                dr.BeginEdit();
                dr[12] = "REJECTED BY:"+Session["StnName"];
                dr.EndEdit();
            }
            SqlCommandBuilder cb = new SqlCommandBuilder((SqlDataAdapter)Session["da"]);
            da.Update((DataTable)Session["dt"]);
           


            String query1 = "select * from CitizenAuth where UserID='" + (String)Session["userid"] + "'";
            SqlDataAdapter da1 = new SqlDataAdapter(query1, con);
            Session["da1"] = da1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1, "CitizenAuth");
            DataTable dt1 = ds1.Tables[0];
            Session["dt1"] = dt1;
            foreach (DataRow dr1 in dt1.Rows)
            {
                dr1.BeginEdit();
                dr1[2] = "";
                dr1.EndEdit();
            }
            SqlCommandBuilder cb1 = new SqlCommandBuilder((SqlDataAdapter)Session["da1"]);
            da1.Update((DataTable)Session["dt1"]);
            Response.Redirect("stationhome.aspx");



        }



        }
    }
