using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodDonorApp
{
    public partial class SearchDonor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["BDConnection"].ConnectionString.ToString()))
            {
                String query = "Select * from dbo.Users where username=@username;";

                using (SqlCommand command = new SqlCommand(query, connection))
                {

                    command.Parameters.AddWithValue("@username", Name.Text);
                    connection.Open();
                    SqlDataAdapter sdra = new SqlDataAdapter(command);
                    DataSet ds = new DataSet();
                    sdra.Fill(ds);
                    ListView1.DataSource = ds.Tables[0];
                    ListView1.DataBind();
                }
            }
        }
    }
}