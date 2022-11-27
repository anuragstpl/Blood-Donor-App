using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodDonorApp.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            if (UserName.Text == "admin" && Password.Text == "123456")
            {
                Session["User"] = "admin";
                Response.Redirect("../CreateEvent.aspx");
            }
            else
            {
                using (SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["BDConnection"].ConnectionString.ToString()))
                {
                    String query = "Select * from dbo.Users where username=@username and [password]=@password;";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {

                        command.Parameters.AddWithValue("@username", UserName.Text);
                        command.Parameters.AddWithValue("@password", Password.Text);
                        connection.Open();
                        SqlDataAdapter sdra = new SqlDataAdapter(command);
                        DataSet ds = new DataSet();
                        sdra.Fill(ds);
                        int result = ds.Tables[0].Rows.Count;

                        // Check Error
                        if (result > 0)
                        {
                            Session["User"] = UserName.Text;
                            Response.Redirect("../Default.aspx");
                            
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
}