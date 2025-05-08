using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotel_management
{
    public partial class user_login : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter sda;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }
        public void fnconnectionDB()
        {
            try
            {
                string conStr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
                conn = new SqlConnection(conStr);
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                    // Response.Write("connection success");

                }
                else
                {
                    Response.Write("connection failed!");

                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());

            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                fnconnectionDB();
                string qry = "SELECT COUNT(*) FROM customer_tbl WHERE email=@eml AND aadhar_no=@aad";
                cmd = new SqlCommand(qry, conn);
                cmd.Parameters.AddWithValue("@eml", txtemail.Text);
                cmd.Parameters.AddWithValue("@aad", txtaadhar_no.Text);

                int cnt = (int)cmd.ExecuteScalar();

                if (cnt > 0)
                {
                    Session["S_eml"] = txtemail.Text;
                    Response.Redirect("~/user_dashboard.aspx");
                }
                else
                {
                    Response.Write("incorrect email or aadhar number");
                }

                conn.Close();

            }
            catch (Exception x)
            {
                Response.Write(x.ToString());

            }

        }
    }
}





