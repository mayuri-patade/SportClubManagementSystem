using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


public partial class GroundBooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
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
           // Lbl2.Text = "Booking Successfully";
            string message = "Your details have been saved successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            Textname.Text = String.Empty;
            TextAddress.Text = String.Empty;
            TextEmailId.Text = String.Empty;
            TextContactNo.Text = String.Empty;
            TextBookingDateFrom.Text = String.Empty;
            TextBookingDateTo.Text = String.Empty;
            TextPurpose.Text = String.Empty;

        }
        catch (Exception ex)
        {
            Lbl2.Text = ex.Message.ToString();

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}