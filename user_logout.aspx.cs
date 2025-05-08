using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotel_management
{
    public partial class user_logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session.Abandon();
                Session.Remove("email");
                Session.Remove("aadhar_no");
                Response.Redirect("~/user_login.aspx");
            }
        }
    }
}