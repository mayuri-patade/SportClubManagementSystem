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

public partial class userpage_Registration : System.Web.UI.Page
{
  
         protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            get_games();
            //loadStudents();
        }
    }

    public void get_games()
    {
        SqlConnection conn = null;
       
        try
        {
            conn = new SqlConnection(@"Data Source=DESKTOP-9F882SJ;Initial Catalog=SCMDB;Integrated Security=True");
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();

            }
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "get_games";
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                ddl1.DataSource = dt;
                ddl1.DataTextField = dt.Columns["gamename"].ToString();
                ddl1.DataValueField = dt.Columns["gamename"].ToString();
                ddl1.DataBind();
            }
        }
        catch (Exception ex)
        {

            lbl1.Text = ex.Message.ToString();
            //throw;
        }
    } 
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = null;
        SqlCommand cmd = null;

        try
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["SCMDBConnectionString"].ConnectionString);
            con.Open();
            String query = "insert into Student(SFname,SLname,Saddress,Sdob,SSchoolCollege,Scontactno,gamename,Semailid,username,password)values(@SFname,@SLname,@Saddress,@Sdob,@SSchoolCollege,@Scontactno,@gamename,@Semailid,@username,@password)";
            cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@SFname", txtfname.Text.ToString());
            cmd.Parameters.AddWithValue("@SLname", txtlname.Text.ToString());
            cmd.Parameters.AddWithValue("@Saddress",txtaddress.Text.ToString());
            cmd.Parameters.AddWithValue("@Sdob", txtdob.Text.ToString());
            cmd.Parameters.AddWithValue("@SSchoolCollege", txtschool.Text.ToString());
            cmd.Parameters.AddWithValue("@Scontactno",txtcontact.Text.ToString());
            cmd.Parameters.AddWithValue("@gamename",ddl1.SelectedValue );
            cmd.Parameters.AddWithValue("@Semailid",txtemailid.Text.ToString());
            cmd.Parameters.AddWithValue("@username",txtusername.Text.ToString());
            cmd.Parameters.AddWithValue("@password",txtpassword.Text.ToString());
            cmd.ExecuteNonQuery();
            con.Close();

         //  lbl1.Text = "Registered Successfully";
    string message = "Your details have been saved successfully.";
           string script = "window.onload = function(){ alert('";
           script += message;
           script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

            txtfname.Text = String.Empty;
            txtlname.Text = String.Empty;
            txtaddress.Text = String.Empty;
            txtdob.Text = String.Empty;
            txtschool.Text = String.Empty;
            txtemailid.Text = String.Empty;
            txtcontact.Text = String.Empty;
            txtusername.Text = String.Empty;
            txtpassword.Text = String.Empty;
        }
        catch(Exception ex)
        {
            lbl1.Text = ex.Message.ToString();
        }

      }
   

   // protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
  //  {
  //      txtdob.Text = Calendar1.SelectedDate.ToLongDateString();


  //      Calendar1.Visible = true;

  //  }
  
    //protected void Button1_Click(object sender, EventArgs e)
   // {
  //      Calendar1.Visible = true;
   // }

    protected void btnClear_Click(object sender, EventArgs e)
    {

        Response.Redirect("Home.aspx");

    }
}