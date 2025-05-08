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
    public partial class user_dashboard : System.Web.UI.Page
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
                //lblemail.Text = eml;
                fnfetchUserdetails();
                GridView1_SelectedIndexChanged(sender, e);
            }
            else
            {
                Response.Redirect("~/user_login.aspx");
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
        protected void fnBindGrid()
        {
            DataSet ds;
            try
            {
                fnConnection();
                string qry = "SELECT first_name,last_name,address,state,city,pincode,phone,email,aadhar_no,check_in_and_time,check_out_and_time,room,no_of_members,no_of_rooms FROM customer_tbl where email = @email";
                cmd = new SqlCommand(qry, conn);
                cmd.Parameters.AddWithValue("email", eml);
                sda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                sda.Fill(ds);
                dgv_user.DataSource = ds;
                dgv_user.DataBind();
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

        public void fnfetchUserdetails()
        {
            fnConnection();
            String qry = "SELECT * FROM customer_tbl WHERE email = @v_eml";
            cmd = new SqlCommand(qry, conn);

            cmd.Parameters.AddWithValue("@v_eml", eml);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                lblName.Text = dr["first_name"].ToString();
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            fnBindGrid();
        }

        protected void dgv_user_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow rw = dgv_user.SelectedRow;
            eml = rw.Cells[0].Text;

            txtfirstname.Text = rw.Cells[1].Text;
            txtlastname.Text = rw.Cells[2].Text;
            txtaddress.Text = rw.Cells[3].Text;
            txtstate.Text = rw.Cells[4].Text;
            txtcity.Text = rw.Cells[5].Text;
            txtpincode.Text = rw.Cells[6].Text;
            //txtemail.Text = rw.Cells[8].Text;
            txtphone.Text = rw.Cells[7].Text;
            //txtaadharno.Text = rw.Cells[9].Text;
            //txtdatein.Text = Convert.ToDateTime(rw.Cells[0].Text);
            //txtdatein.Text = rw.Cells[9].Text;
            //txtdateout.Text = rw.Cells[10].Text;

            //Room.Text = rw.Cells[11].Text;
            //member.Text = rw.Cells[12].Text;
            //ddtotalroom.Text = rw.Cells[13].Text;
        }

        //protected void dgv_user_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    GridViewRow rw = dgv_user.SelectedRow;
        //    eml = rw.Cells[1].Text;

        //    //ddtype.SelectedValue = rw.Cells[9].Text;
        //    //for (int i = 0;i<ddtype.Items.Count; i++)
        //    //{
        //    //    if (ddtype.Items[i].Text == rw.Cells[9].Text)
        //    //    {
        //    //        ddtype.SelectedIndex = i;
        //    //    }
        //    //}
        //    //fnBindBrand();
        //    //for (int i = 0; i < ddbrand.Items.Count; i++)
        //    //{
        //    //    if (ddbrand.Items[i].Text == rw.Cells[2].Text)
        //    //    {
        //    //        ddbrand.SelectedIndex = i;
        //    //    }
        //    //}


        //    txtfirstname.Text = rw.Cells[2].Text;
        //    txtfirstname.Text = rw.Cells[3].Text;
        //    txtaddress.Text = rw.Cells[4].Text;
        //    txtstate.Text = rw.Cells[5].Text;
        //    txtcity.Text = rw.Cells[6].Text;
        //    txtpincode.Text = rw.Cells[7].Text;
        //    txtphone.Text = rw.Cells[8].Text;
        //    txtemail.Text = rw.Cells[9].Text;
        //    txtaadharno.Text = rw.Cells[10].Text;
        //    txtdatein.Text = rw.Cells[11].Text;
        //    txtdateout.Text = rw.Cells[12].Text;
        //    //Room.Text = rw.Cells[6].Text;
        //    //member.Text = rw.Cells[6].Text;
        //    //ddtotalroom.Text = rw.Cells[6].Text;
        //}

        protected void update_Click(object sender, EventArgs e)
        {
            try
            {
                fnConnection();
                string qry = "UPDATE customer_tbl SET first_name = @first_name ,last_name = @last_name ,address = @address ,state = @state ,city = @city,pincode = @pincode,phone = @phone WHERE email = @email";
                cmd = new SqlCommand(qry, conn);
                cmd.Parameters.AddWithValue("email", eml);
                cmd.Parameters.AddWithValue("first_name", txtfirstname.Text);
                cmd.Parameters.AddWithValue("last_name", txtlastname.Text);
                cmd.Parameters.AddWithValue("address", txtaddress.Text);
                cmd.Parameters.AddWithValue("state", txtstate.Text);
                cmd.Parameters.AddWithValue("city", txtcity.Text);
                cmd.Parameters.AddWithValue("pincode", txtpincode.Text);
                cmd.Parameters.AddWithValue("phone", txtphone.Text);

                int res = cmd.ExecuteNonQuery();
                if (res > 0)
                {
                    Response.Write("<script>alert('You have updated successfully');</script>");
                }
                else
                {
                    Response.Write("Data not Updated");
                }
                conn.Close();
                fnBindGrid();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}