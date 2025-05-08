
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace hotel_management
{
    public partial class comments : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter sda;
        private object lblname;
        protected void Page_Load(object sender, EventArgs e)
        {
            rpt_customer_ItemCommand();
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
        protected void rpt_customer_ItemCommand()
        {
            DataSet ds;
            try
            {
                fnconnectionDB();
                string qry = "SELECT * FROM comment_tbl";
                cmd = new SqlCommand(qry, conn);
                sda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                sda.Fill(ds);
                rpt_customer.DataSource = ds;
                rpt_customer.DataBind();
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
        protected void DeleteCustomer(object sender, EventArgs e)
        {
            int id = int.Parse(((sender as LinkButton).NamingContainer.FindControl("id") as Label).Text);
            string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM comment_tbl WHERE id = @id", conn))
                {
                    cmd.Parameters.AddWithValue("@id", id);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }

            this.rpt_customer_ItemCommand();
        }
    }
}