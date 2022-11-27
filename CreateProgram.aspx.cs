using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodDonorApp
{
    public partial class CreateProgram : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnProgram_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["BDConnection"].ConnectionString.ToString()))
            {
                String query = "INSERT INTO dbo.Programs (name,organizer,description) VALUES (@name,@organizer,@description)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@name", ProgramName.Text);
                    command.Parameters.AddWithValue("@organizer", OrganizerName.Text);
                    command.Parameters.AddWithValue("@description", Description.Text);
                    connection.Open();
                    int result = command.ExecuteNonQuery();

                    // Check Error
                    if (result > 0)
                    {
                        Response.Write("<script>alert('Program added successfully.');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Some error occured.');</script>");
                    }
                }
            }
        }
    }
}