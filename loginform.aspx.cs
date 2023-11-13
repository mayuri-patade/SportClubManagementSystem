using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class loginform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = null;
        try
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SCMDBConnectionString"].ConnectionString);
            conn.Open();
            String CheckUser = "select count(*) from Student where Username='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(CheckUser, conn);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                String checkPassword = "select Password from Student where Password='" + TextBox2.Text + "'";
                SqlCommand passcmd = new SqlCommand(checkPassword, conn);
                String password = passcmd.ExecuteScalar().ToString();
                if (password == TextBox2.Text)
                {
                    Session["New"] = TextBox1.Text;
                    Response.Redirect("WelcomeUser.aspx");
                }
                else
                {
                    //lblloginfailed.Text = "Username or Password is Incorrect";
                    string message = "Username or Password is Incorrect";
                    string script = "window.onload = function(){ alert('";
                    script += message;
                    script += "')};";
                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                }
            }
        }

        catch (Exception)
        {
           // lblloginfailed.Text = "Username or Password is Incorrect";
            string message = "Username or Password is Incorrect";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            //throw;

        }
        finally
        {
            conn.Close();
        }
        SqlConnection conn1 = null;
        SqlCommand cmd1 = null;
        try
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SCMDBConnectionString"].ConnectionString);
            conn.Open();
            String CheckUser = "select count(*) from Admin where Username='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(CheckUser, conn);
            int temp1 = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            conn.Close();
            if (temp1 == 1)
            {
                conn.Open();
                string checkadminpasswd = "select Password from Admin where Username ='" + TextBox1.Text + "'";
                SqlCommand passAdmnin = new SqlCommand(checkadminpasswd, conn);
                string passadmin = passAdmnin.ExecuteScalar().ToString();
                if (passadmin == TextBox2.Text)
                {
                    Session["New"] = TextBox1.Text;
                    Response.Redirect("StudentDetails.aspx");
                }
                else
                {
                    lblloginfailed.Text = "Username or Password is Incorrect";

                }

            }
        }
        catch (Exception)
        {

            throw;
        }
    }
}
