using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodDonorApp
{
    public partial class CreateEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEvent_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["BDConnection"].ConnectionString.ToString()))
            {
                String query = "INSERT INTO dbo.Events (name,organizer,place,time,description) VALUES (@name,@organizer,@place,@time,@description)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@name", EventName.Text);
                    command.Parameters.AddWithValue("@organizer", OrganizerName.Text);
                    command.Parameters.AddWithValue("@place", Place.Text);
                    command.Parameters.AddWithValue("@time", Time.Text);
                    command.Parameters.AddWithValue("@description", Description.Text);
                    connection.Open();
                    int result = command.ExecuteNonQuery();

                    // Check Error
                    if (result > 0)
                    {
                        Response.Write("<script>alert('Event added successfully.');</script>");
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