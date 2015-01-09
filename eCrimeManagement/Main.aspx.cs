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
    public partial class MAIN : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {

            
            if (!IsPostBack)
            {

                txtWelcome.Text = "Welcome to eCrime Portal.<br />This portal will provide you easier way file a FIR" +
                    "<br />to your nearby POLICE STATION in just a click." + "<br />Register yourself and get your account today.";
                                            


                //Login types
                cmbType.Items.Add("CITIZEN");
                cmbType.Items.Add("POLICE STATION");
                cmbType.Items.Add("ADMIN");
                Label13.Visible = false;
                

                int cz = 0,st=0;
                //COUNTING NO OF USERS
                SqlDataAdapter daC = new SqlDataAdapter("select UserID from CitizenDetails", con);
                DataSet dsC = new DataSet();
                daC.Fill(dsC);
                DataTable dtC = dsC.Tables[0];
                foreach (DataRow dr in dtC.Rows)
                {
                    cz++;
                }

                //COUNTING NO OF STATIONS AND GETTING STATION NAMES
                SqlDataAdapter da = new SqlDataAdapter("select StationName from StationDetails", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DataTable dt = ds.Tables[0];
                String StnNam="<br />STATION LIST<br />";
                int nR = dt.Rows.Count;
                String lStn="";
                foreach (DataRow dr in dt.Rows)
                {
                    st++;
                    nR--;
                    if (nR < 5)
                        lStn = lStn + "," + dr[0].ToString();
                    StnNam = StnNam + "<br />" + dr[0].ToString();
                    
                }
                lblNewStn.Text = lblNewStn.Text +" " + lStn;
                Label7.Text = "TOTAL NUMBER OF USERS REGISTERED=" + cz.ToString();
                Label8.Text = "<br /> TOTAL NUMBER OF POLICE STATION REGISTERED= " + st.ToString()+"<br />"+StnNam;
            }
            if (Session["MSG"] == null)
                Label6.Visible = false;
            else
            {
                Label6.Visible = true;
                Label6.Text = (String)Session["MSG"];
                Session["MSG"] = null;
            }

            if (!IsPostBack)
            {
                cmbState.Items.Clear();
                SqlCommand cmdState = new SqlCommand("Select state from state", con);
                con.Open();
                SqlDataReader dr1 = cmdState.ExecuteReader();
                while (dr1.Read())
                {
                    cmbState.Items.Add(dr1[0].ToString());
                }
                con.Close();
            }
            
        }

        

        protected void cmbType_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtPass.Text = "";
            txtUser.Text = "";    
        }
        
        protected void btnLogin_Click(object sender, EventArgs e)
        {
           
            }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int ch;

            ch = cmbType.SelectedIndex + 1;
            Label6.Text = ch.ToString();
            if (IsPostBack)
            {

                switch (ch)
                {
                    case 1://CITIZEN DATABASE
                        {
                            if (txtPass.Text.Length != 0)
                            {
                                SqlDataAdapter da = new SqlDataAdapter("Select * from CitizenAuth", con);
                                DataSet ds = new DataSet();
                                da.Fill(ds, "CitizenAuth");
                                DataTable dt = ds.Tables[0];
                                foreach (DataRow dr in dt.Rows)
                                {
                                    if (dr[1].ToString() == txtUser.Text && dr[2].ToString() == txtPass.Text)
                                    {
                                        Session["USER"] = txtUser.Text;
                                        Response.Write("LOGIN SUCCESSFUL");
                                        Response.Redirect("CitizenHome.aspx");
                                        break;
                                    }
                                }
                                //Response.Write("LOGIN UNSUCCESSFUL");
                                Label15.Visible = true;
                                Label15.Text = "**LOGIN UNSUCCESSFUL";
                                SqlCommandBuilder cb = new SqlCommandBuilder(da);
                                da.Update(dt);
                            }
                           

                        }
                        break;

                    case 2://STATION DB
                        {
                            SqlDataAdapter da = new SqlDataAdapter("Select * from StationAuth", con);
                            DataSet ds = new DataSet();
                            da.Fill(ds, "StationAuth");
                            DataTable dt = ds.Tables[0];
                            foreach (DataRow dr in dt.Rows)
                            {
                                if (dr[1].ToString() == txtUser.Text && dr[2].ToString() == txtPass.Text)
                                {
                                    Response.Write("LOGIN SUCCESSFUL");
                                    Session["USER"] = txtUser.Text;
                                    Response.Redirect("stationhome.aspx");
                                    break;
                                }
                            }
                            SqlCommandBuilder cb = new SqlCommandBuilder(da);
                            da.Update(dt);
                        }
                        break;
                    case 3://ADMIN
                        {
                            SqlDataAdapter da = new SqlDataAdapter("Select * from AdminAuth", con);
                            DataSet ds = new DataSet();
                            da.Fill(ds, "AdminAuth");
                            DataTable dt = ds.Tables[0];
                            foreach (DataRow dr in dt.Rows)
                            {
                                if (dr[0].ToString() == txtUser.Text && dr[1].ToString() == txtPass.Text)
                                {
                                    Response.Write("LOGIN SUCCESSFUL");
                                    Session["USER"] = txtUser.Text;
                                    Response.Redirect("adminhome.aspx");
                                    break;
                                }
                            }
                            SqlCommandBuilder cb = new SqlCommandBuilder(da);
                            da.Update(dt);
                        }
                        break;

                }
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            
        }

        protected void ImageButton1_Click2(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CitizenRegistration.aspx");
        }

        protected void cmbState_SelectedIndexChanged(object sender, EventArgs e)
        {
            
                cmbDist.Items.Clear();
                cmbPS.Items.Clear();
                int indx = cmbState.SelectedIndex + 1;
                SqlCommand cmd1 = new SqlCommand("select District from District where id=@var", con);
                cmd1.Parameters.AddWithValue("@var", indx.ToString());
                con.Open();
                SqlDataReader dr = cmd1.ExecuteReader();

                while (dr.Read())
                {

                    cmbDist.Items.Add(dr[0].ToString());

                }
                con.Close();
            
        }

        protected void cmbDist_SelectedIndexChanged(object sender, EventArgs e)
        {
            
                cmbPS.Items.Clear();
                String dis = cmbDist.SelectedItem.ToString();
                SqlCommand cmd1 = new SqlCommand("select * from StationDetails where District=@var", con);
                cmd1.Parameters.AddWithValue("@var", dis);
                con.Open();
                SqlDataReader dr = cmd1.ExecuteReader();

                while (dr.Read())
                {

                    cmbPS.Items.Add(dr[1].ToString());

                }
                con.Close();
                if (cmbPS.SelectedItem != null)
                {
                    SqlDataAdapter da = new SqlDataAdapter("select StationName,Address,MailID,PhoneNo from StationDetails where StationName='" + cmbPS.SelectedItem.ToString() + "'", con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    DataTable dt = ds.Tables[0];
                    foreach (DataRow dr1 in dt.Rows)
                    {

                        Label13.Text = "Name= " + dr1[0].ToString() + "<br />Address= " + dr1[1].ToString() + "<br />Mail ID= " + dr1[2].ToString() + "<br />PhoneNo. =" + dr1[3].ToString();

                    }
                    Label13.Visible = true;
                }
                else
                    Label13.Visible = false;
            
        }

        protected void cmbPS_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select StationName,Address,MailID,PhoneNo from StationDetails where StationName='" + cmbPS.SelectedItem.ToString() + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {

                Label13.Text = "Name= " + dr[0].ToString() + "<br />Address= " + dr[1].ToString() + "<br />Mail ID= " + dr[2].ToString() + "<br />PhoneNo. =" + dr[3].ToString();

            }
            Label13.Visible = true;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgetPassword.aspx");
        }
        }

       
    }
