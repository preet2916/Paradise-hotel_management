using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotel_management
{
    public partial class index : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

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
        protected void btpost_Click(object sender, EventArgs e)
        {
            try
            {
                fnconnectionDB();
                string qry = "INSERT INTO comment_tbl(name,email,comment) VALUES(@name,@email,@comment)";
                cmd = new SqlCommand(qry, conn);

                cmd.Parameters.AddWithValue("@name", txtname.Text);
                cmd.Parameters.AddWithValue("@email", txtemail.Text);
                cmd.Parameters.AddWithValue("@comment", Txtcomment.Text);

                int res = cmd.ExecuteNonQuery();
                if (res > 0)
                {

                }
                else
                {
                    Response.Write("not inserted");
                }
                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}