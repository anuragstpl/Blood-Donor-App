using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodDonorApp
{
    public partial class RaiseRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRaiseRequest_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Request raised successfully.');</script>");
        }
    }
}