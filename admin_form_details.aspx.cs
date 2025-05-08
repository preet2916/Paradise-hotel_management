using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace hotel_management
{
    public partial class admin_form_details : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter sda;
        public static string eml;
        public static string email;

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
        //protected void update_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        fnConnection();
        //        string qry = "UPDATE admin_tbl SET name = @name ,password = @password ,gender = @gender ,contact = @contact WHERE email = @email";
        //        cmd = new SqlCommand(qry, conn);
        //        cmd.Parameters.AddWithValue("email", email);
        //        cmd.Parameters.AddWithValue("name", txtname.text);
        //        cmd.Parameters.AddWithValue("password", txtdescription.Text);
        //        cmd.Parameters.AddWithValue("gender", txtprice.Text);
        //        cmd.Parameters.AddWithValue("contact", txtquantity.Text);

        //        int res = cmd.ExecuteNonQuery();
        //        if (res > 0)
        //        {
        //            Response.Write("Data Updated");
        //        }
        //        else
        //        {
        //            Response.Write("Data not Updated");
        //        }
        //        conn.Close();
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write(ex.ToString());
        //    }
        //}
        //protected void cpRepeater_ItemCommand(object sender, RepeaterItemEventArgs e)
        //{
        //    if (e.CommandName == "update")
        //    {
        //        SqlConnection SqlCnn = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
        //        SqlCommand SqlCmd = new SqlCommand("update CPMEMBERS set Member=@Member, UpdatedType=@UpdatedType where id=@ID", SqlCnn);
        //        SqlCmd.Parameters.Add("@Member", SqlDbType.VarChar).Value = txtName.Text;
        //        SqlCmd.Parameters.Add("@UpdatedType", SqlDbType.VarChar).Value = ddlType.SelectedItem.Text;
        //        SqlCmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = e.CommandArgument;
        //        try
        //        {
        //            SqlCnn.Open();
        //            SqlCmd.ExecuteNonQuery();

        //        }
        //        catch (Exception ex)
        //        {
        //            ex.Message.ToString();
        //        }
        //        finally
        //        {
        //            if (SqlCnn.State == ConnectionState.Open)
        //                SqlCnn.Close();
        //        }
        //        BindRepeater();
        //    }
        //}
    }
}