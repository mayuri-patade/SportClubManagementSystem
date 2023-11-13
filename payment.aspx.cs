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


public partial class payment : System.Web.UI.Page
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
            String query = "insert into Payment(Fees,Selectbank,Cardnumber,CVV,Expirydatem,Expirydatey,Cardholdername)values(@Fees,@Selectbank,@CN,@CVV,@EDm,@EDy,@CHN)";
            cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Fees", ddl0.SelectedValue);
            cmd.Parameters.AddWithValue("@Selectbank", ddl1.SelectedValue);
            cmd.Parameters.AddWithValue("@CN", TextBox1.Text.ToString());
            cmd.Parameters.AddWithValue("@CVV", TextBox2.Text.ToString());
            cmd.Parameters.AddWithValue("@EDm", TextBox4.Text.ToString());
            cmd.Parameters.AddWithValue("@EDy", TextBox5.Text.ToString());
            cmd.Parameters.AddWithValue("@CHN", TextBox3.Text.ToString());


            cmd.ExecuteNonQuery();
            con.Close();
        //    Label8.Text = "Payment Successfully";
            string message = "Your payment have been done successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
              TextBox1.Text = String.Empty;
              TextBox2.Text = String.Empty;
              TextBox3.Text = String.Empty;
              TextBox4.Text = String.Empty;
              TextBox5.Text = String.Empty;
        }
       catch (Exception ex)
       {
            Label8.Text = ex.Message.ToString();

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("WelcomeUser.aspx");
    }
}