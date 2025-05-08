using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotel_management
{
    public partial class admin_add_customer : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter sda;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Room_SelectedIndexChanged(sender, e);
            }
            fnConnection();

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



        public void fnroom()
        {
            member.Items.Clear();
            if (Room.SelectedValue == "Economy")
            {
                member.Items.Add("---select---");
                member.Items.Add("1");
                member.Items.Add("2");

            }
            else if (Room.SelectedValue == "Standard")
            {
                member.Items.Add("---select---");
                member.Items.Add("1");
                member.Items.Add("2");
                member.Items.Add("3");

            }
            else if (Room.SelectedValue == "Deluxe")
            {
                member.Items.Add("---select---");
                member.Items.Add("1");
                member.Items.Add("2");
                member.Items.Add("3");
                member.Items.Add("4");

            }

        }

        protected void Room_SelectedIndexChanged(object sender, EventArgs e)
        {
            fnroom();
        }



        protected void submitButton_Click(object sender, EventArgs e)
        {
            try
            {
                fnConnection();
                string qry = "INSERT INTO customer_tbl(first_name,last_name,address,state,city,pincode,phone,email,aadhar_no,check_in_and_time,check_out_and_time,room,no_of_members,no_of_rooms)" +
                    " values(@fname,@lname,@add,@st,@ciy,@z_code,@no,@eml,@aadharr,@cindate,@coutdate,@rm,@nomember,@noroom)";
                cmd = new SqlCommand(qry, conn);
                cmd.Parameters.AddWithValue("@fname", txtfirstname.Text);
                cmd.Parameters.AddWithValue("@lname", txtlastname.Text);
                cmd.Parameters.AddWithValue("@add", txtaddress.Text);
                cmd.Parameters.AddWithValue("@st", txtstate.Text);
                cmd.Parameters.AddWithValue("@ciy", txtcity.Text);
                cmd.Parameters.AddWithValue("@z_code", txtpincode.Text);
                cmd.Parameters.AddWithValue("@no", txtphone.Text);
                cmd.Parameters.AddWithValue("@eml", txtemail.Text);
                cmd.Parameters.AddWithValue("@aadharr", txtaadharno.Text);
                cmd.Parameters.AddWithValue("@cindate", Convert.ToDateTime(txtdatein.Text));
                cmd.Parameters.AddWithValue("@coutdate", Convert.ToDateTime(txtdateout.Text));
                cmd.Parameters.AddWithValue("@rm", Room.SelectedValue);
                cmd.Parameters.AddWithValue("@nomember", member.SelectedValue);
                cmd.Parameters.AddWithValue("@noroom", ddtotalroom.Text);


                int res = cmd.ExecuteNonQuery();
                if (res > 0)
                    Response.Redirect("~/customer_details.aspx");
                else
                    Response.Write("not inserted");
                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}