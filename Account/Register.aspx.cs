using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;
using System.Data.SqlClient;

namespace BloodDonorApp.Account
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
        }

        protected void RegisterUser_CreatedUser(object sender, EventArgs e)
        {
           
        }


        protected void btnRegister_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["BDConnection"].ConnectionString.ToString()))
            {
                String query = "INSERT INTO dbo.Users (name,email,username,address,password) VALUES (@name,@email,@username,@address,@password)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@name", Name.Text);
                    command.Parameters.AddWithValue("@email", Email.Text);
                    command.Parameters.AddWithValue("@username", UserName.Text);
                    command.Parameters.AddWithValue("@address", Address.Text);
                    command.Parameters.AddWithValue("@password", Password.Text);
                    connection.Open();
                    int result = command.ExecuteNonQuery();

                    // Check Error
                    if (result > 0)
                    {
                        Response.Write("<script>alert('Registration completed successfully.');</script>");
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