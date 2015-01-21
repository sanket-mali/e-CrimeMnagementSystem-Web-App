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
    public partial class UpdateStationDetails : System.Web.UI.Page
    {
        String StnID;
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
                Response.Redirect("Main.aspx");

            if (!IsPostBack)
            {

                StnID = (String)Session["StnID"];
                Session["stdid"] = StnID;
                String query = "select * from StationDetails where StationID='" + StnID + "'";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "StationDetails");
                DataTable dt = ds.Tables[0];
                foreach (DataRow dr in dt.Rows)
                {
                    txtStnID.Text = dr[0].ToString();
                    txtStnName.Text = dr[1].ToString();
                    txtInCID.Text = dr[2].ToString();
                    txtInName.Text = dr[3].ToString();
                    txtInPhn1.Text = dr[4].ToString();
                    txtAdd.Text = dr[5].ToString();
                    txtState.Text = dr[6].ToString();
                    txtDist.Text = dr[7].ToString();
                    txtPin.Text = dr[8].ToString();
                    txtMail.Text = dr[9].ToString();
                    txtPhn1.Text = dr[10].ToString();

                }
                SqlCommandBuilder cb = new SqlCommandBuilder(da);
                da.Update(dt);
            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
             
            String query = "select * from StationDetails";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            Session["da"] = da;
            DataSet ds = new DataSet();
            da.Fill(ds, "StationDetails");
            DataTable dt = ds.Tables[0];
            Session["dt"] = dt;
            foreach (DataRow dr in dt.Rows)
            {
                if (Session["stdid"].ToString() == dr[0].ToString())
                {
                    dr.BeginEdit();
                    dr[2] = txtInCID.Text;
                    dr[3] = txtInName.Text;
                    dr[4] = txtInPhn1.Text;
                    dr[5] = txtAdd.Text;
                    dr[9] = txtMail.Text;
                    dr[10] = txtPhn1.Text + "," + txtPhn2.Text;
                    dr.EndEdit();
                    
                }
            }
            SqlCommandBuilder cb = new SqlCommandBuilder((SqlDataAdapter)(Session["da"]));
            da.Update((DataTable)Session["dt"]);
            Response.Redirect("ManageStations.aspx");

        }
    }
}