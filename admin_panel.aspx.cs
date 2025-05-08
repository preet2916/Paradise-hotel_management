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
    public partial class admin_panel : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter sda;
        private object lblname;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1_SelectedIndexChanged(sender,e);
            //fnadmin();
            if (Session["S_eml"] != null)
            {
                string eml = Session["S_eml"].ToString();
                lbleml.Text = eml;
            }
            else
            {
                Response.Redirect("~/admin_login.aspx");
            }
        }
        //protected void fnadmin()
        //{
        //    fnconnectionDB();
        //    string eml = Session["S_eml"].ToString();
        //    lbleml.Text = eml;
        //    String qry = "SELECT * FROM admin_tbl where email=@veml";
        //    cmd = new SqlCommand(qry, conn);
        //    cmd.Parameters.AddWithValue("veml", lbleml.Text);
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    if (dr.Read())
        //    {
        //        name.Text = dr["Name"].ToString();
        //        password.Text = dr["Password"].ToString();
        //        mobile.Text = dr["Mobile"].ToString();
        //        gender.Text = dr["gender"].ToString();
        //        int email = Convert.ToInt32(dr["vid"]);
        //    }
        //    dr.Close();
        //}
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
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {

                fnconnectionDB();
                String qry = "SELECT * from customer_tbl";
                cmd = new SqlCommand(qry, conn);
                sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());

            }
        }
    }
}

