using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace eCrimeManagement
{
    public partial class searchcomplainstation : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            cmbSearch.Items.Add("Complain Id");
            cmbSearch.Items.Add("Complain Status");
            txtsearch.Visible = false;
        }

        protected void cmbSearch_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False");
            if (cmbSearch.SelectedIndex == 0)
            {
                txtsearch.Visible = true;
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT UserID, ComplainId,Subject, DateTimeOfIncident, PoliceStation, Suspects, Status fROM ComplainDetails where id=@var", con);
                cmd.Parameters.AddWithValue("@var", txtsearch .Text );

                
                
                   


            }
        }

      
    }
}