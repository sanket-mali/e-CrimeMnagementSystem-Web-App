using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;




namespace admin
{
    public partial class addnew : System.Web.UI.Page
    {
       

        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
                Response.Redirect("Main.aspx");
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


        }

        protected string getRef()
        {
            int i = 0;
             String query = "select * from ComplainData";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds=new DataSet();
            da.Fill(ds, "ComplainData");
             DataTable dt = ds.Tables[0];
             foreach (DataRow dr in dt.Rows)
             {
                 i++;
             }
             return i.ToString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {



            DateTime dt = DateTime.Now;
            String dA=dt.ToString("dd-mm-yyyy");
            String Tm = dt.ToLongTimeString();
            String Ref = getRef();
            SqlCommand cmdSubmit = new SqlCommand("insert into ComplainData values(@UId,@ComplainId,@Subject,@DTi,@State,@Dist,@PS,@POI,@Detail,@Suspect,@SuspectD,@DTR,@Status,@RefI)",con);
            cmdSubmit.Parameters.AddWithValue("@UId",(String)Session["USER"]);
            cmdSubmit.Parameters.AddWithValue("@ComplainId","NV");
            cmdSubmit.Parameters.AddWithValue("@Subject", txtSubject.Text);
            cmdSubmit.Parameters.AddWithValue("@DTi", txtDate.Text + " " + txtTime.Text );
            cmdSubmit.Parameters.AddWithValue("@State", cmbState.SelectedItem.ToString());
            cmdSubmit.Parameters.AddWithValue("@Dist", cmbDist.SelectedItem.ToString());
            cmdSubmit.Parameters.AddWithValue("@PS", cmbPS.SelectedItem.ToString());
            cmdSubmit.Parameters.AddWithValue("@POI", txtPlace.Text);
            cmdSubmit.Parameters.AddWithValue("@Detail", txtReport.Text);
            cmdSubmit.Parameters.AddWithValue("@Suspect", txtSuspectName.Text);
            cmdSubmit.Parameters.AddWithValue("@SuspectD", txtSuspectDetail.Text);
            cmdSubmit.Parameters.AddWithValue("@DTR", dA+" "+Tm);
            cmdSubmit.Parameters.AddWithValue("@Status","NULL");
            cmdSubmit.Parameters.AddWithValue("@RefI", Ref);
            con.Open();
            cmdSubmit.ExecuteNonQuery();
            con.Close();

            SqlCommand cmdAct = new SqlCommand("insert into ComplainActivity values(@ComplainId,@Activity1,@Activity2,@Activity3,@Activity4,@Activity5,@RefID)", con);
            cmdAct.Parameters.AddWithValue("@ComplainId", "NV");
            cmdAct.Parameters.AddWithValue("@Activity1",dA+" "+Tm);
            cmdAct.Parameters.AddWithValue("@Activity2","NULL");
            cmdAct.Parameters.AddWithValue("@Activity3", "NULL");
            cmdAct.Parameters.AddWithValue("@Activity4", "NULL");
            cmdAct.Parameters.AddWithValue("@Activity5", "NULL");
            cmdAct.Parameters.AddWithValue("@RefID", Ref);
            con.Open();
            cmdAct.ExecuteNonQuery();
            con.Close();


            Response.Write("Successfully Reported");
            Session["MSG"] = "YOUR COMPLAIN HAS BEEN REGISTERD SUCCESSFULLY";
            Response.Redirect("CitizenHome.aspx");
        }

        protected void cmbState_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmbDist.Items.Clear();


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
        }
    }
}