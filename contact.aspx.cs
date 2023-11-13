using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        SqlConnection conn = null;
        SqlCommand cmd = null;
        try
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SCMDBConnectionString"].ConnectionString);
            conn.Open();
            string insert = "insert into feedback(Name,Email,MobileNumber,Subject,Message)values(@Name,@Email,@MobileNumber,@Subject,@Message)";
            cmd = new SqlCommand(insert, conn);
            cmd.Parameters.AddWithValue("@Name", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@Email", TextBox4.Text.Trim());
            cmd.Parameters.AddWithValue("@MobileNumber", TextBox5.Text.Trim());
            cmd.Parameters.AddWithValue("@Subject", TextBox6.Text.Trim());
            cmd.Parameters.AddWithValue("@Message", TextBox7.Text.Trim());
            int no = Convert.ToInt32(cmd.ExecuteNonQuery().ToString());
            if (no != 1)
            {
                Label3.Text = "Please Fill All The Details";
            }
            else
            {
                // Label3.Text = "Successful";
                string message = "Your details have been send successfully.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

            }
            TextBox3.Text = String.Empty;
            TextBox4.Text = String.Empty;
            TextBox5.Text = String.Empty;
            TextBox6.Text = String.Empty;
            TextBox7.Text = String.Empty;
        }
        catch (Exception)
        {

            throw;
        }
        finally
        {
            conn.Close();
        }
    }
}
