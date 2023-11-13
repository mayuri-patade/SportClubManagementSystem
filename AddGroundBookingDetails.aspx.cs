using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class AddGroundBookingDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-9F882SJ;Initial Catalog=SCMDB;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonSnd_Click(object sender, EventArgs e)
     {
        SqlConnection con = null;
        SqlCommand cmd = null;

        try
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["SCMDBConnectionString"].ConnectionString);
            con.Open();
            String query = "insert into GroundBooking(Name,Address,Emailid,Contactno,BookingdateFrom,BookingdateTo,Purpose)values(@Name,@Address,@Emailid,@Contactno,@BookingdateFrom,@BookingdateTo,@Purpose)";
            cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Name", Textname.Text.ToString());
            cmd.Parameters.AddWithValue("@Address", TextAddress.Text.ToString());
            cmd.Parameters.AddWithValue("@Emailid", TextEmailId.Text.ToString());
            cmd.Parameters.AddWithValue("@Contactno", TextContactNo.Text.ToString());         
            cmd.Parameters.AddWithValue("@BookingdateFrom", TextBookingDateFrom.Text.ToString());
            cmd.Parameters.AddWithValue("@BookingdateTo", TextBookingDateTo.Text.ToString());
            cmd.Parameters.AddWithValue("@Purpose", TextPurpose.Text.ToString());


            cmd.ExecuteNonQuery();
            con.Close();
            Lbl2.Text = "Booking Successfully";
          
            Textname.Text = String.Empty;
            TextAddress.Text = String.Empty;
            TextEmailId.Text = String.Empty;
            TextContactNo.Text = String.Empty;
            TextBookingDateFrom.Text = String.Empty;
            TextBookingDateTo.Text = String.Empty;
            TextPurpose.Text = String.Empty;
            Response.Redirect("AddGroundBookingDetails.aspx");
        }
        catch (Exception ex)
        {
            Lbl2.Text = ex.Message.ToString();

        }
    }
  
    
    protected void gvGround_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            Int32 Bookingid = Convert.ToInt32(gvGround.DataKeys[e.RowIndex].Value);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string query = "DELETE FROM GroundBooking WHERE Bookingid =@Bookingid";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Bookingid",Bookingid);
            cmd.ExecuteNonQuery();
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }

        }
        catch (Exception ex)
        {
            Lbl2.Text = ex.Message.ToString();
        }

    }
    protected void gvGround_SelectedIndexChanged(object sender, EventArgs e)
    {
        string Bookingid = gvGround.DataKeys[gvGround.SelectedRow.RowIndex].Value.ToString();
        ViewState["Bookingid"] = Bookingid;
        ButtonSnd.Text = "Send";

    }
    private void loadStudents()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SCMDBConnectionString"].ConnectionString);
    
        try
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string query = "SELECT Name,Address,Emailid,Contactno,BookingdateFrom,BookingdateTo,Purpose FROM GroundBooking;";
            SqlCommand cmd = new SqlCommand(query, conn);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            cmd.ExecuteNonQuery();
            gvGround.DataSource = ds.Tables[0];
            gvGround.DataBind();

            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }

        }
        catch (Exception ex)
        {
        }

    }

     protected void btnUpdate_Click(object sender, EventArgs e)
    {
      SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SCMDBConnectionString"].ConnectionString);
        con.Open();
            Int32 Name = Convert.ToInt32(ViewState["Name"]);
            string query = "UPDATE GroundBooking SET Address=@Address,Emailid=@Emailid,Contactno=@Contactno,BookingdateFrom=@BookingdateFrom,BookingdateTo=@BookingdateTo,Purpose=@Purpose where Name=@Name";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Name", Textname.Text.Trim());
            cmd.Parameters.AddWithValue("@Address", TextAddress.Text.Trim());
            cmd.Parameters.AddWithValue("@Emailid", TextEmailId.Text.Trim());
            cmd.Parameters.AddWithValue("@Contactno", TextContactNo.Text.Trim());
            cmd.Parameters.AddWithValue("@BookingdateFrom", TextBookingDateFrom.Text.Trim());
            cmd.Parameters.AddWithValue("@BookingdateTo", TextBookingDateTo.Text.Trim());
            cmd.Parameters.AddWithValue("@Purpose", TextPurpose.Text.Trim());
            cmd.ExecuteNonQuery();
            con.Close();
            gvGround.DataBind();
            Lbl2.Text = "upadated succesfully";

            Response.Redirect("AddGroundBookingDetails.aspx");

    }
 
   
}