
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
    public partial class demo_admin_form_ : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter sda;
        public static string eml;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["s_eml"] != null)
            {
                eml = Session["s_eml"].ToString();
                rpt_customer_ItemCommand();
            }
            else
            {
                Response.Redirect("~/login.aspx");
            }
        }
        protected void fnConnection()
        {
            try
            {
                string conStr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
                conn = new SqlConnection(conStr);

                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
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
                fnConnection();
                string qry = "SELECT * FROM admin_tbl WHERE email = @v_eml";
                cmd = new SqlCommand(qry, conn);
                cmd.Parameters.AddWithValue("@v_eml", eml);
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

   
    }
}