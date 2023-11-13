using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class AccountDetails : System.Web.UI.Page
{
   SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-9F882SJ;Initial Catalog=SCMDB;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            get_games();
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
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
                conn.Open();
            
            Int32 username = Convert.ToInt32(ViewState["username"]);
            string query = "UPDATE Student SET SFname=@SFname,SLname=@SLname,Saddress=@Saddress,Sdob=@Sdob,SSchoolCollege=@SSchoolCollege,Scontactno=@Scontactno,gamename=@gamename,Semailid=@Semailid,password=@password where username=@username";
            SqlCommand cmd = new SqlCommand(query, conn);

            cmd.Parameters.AddWithValue("@SFname", txtfname.Text.Trim());
            cmd.Parameters.AddWithValue("@SLname", txtlname.Text.Trim());
            cmd.Parameters.AddWithValue("@Saddress", txtaddress.Text.Trim());
            cmd.Parameters.AddWithValue("@Sdob", txtdob.Text.Trim());
            cmd.Parameters.AddWithValue("@SSchoolCollege", txtschool.Text.Trim());
            cmd.Parameters.AddWithValue("@Scontactno", txtcontact.Text.Trim());
            cmd.Parameters.AddWithValue("@gamename", ddl1.SelectedValue);
            cmd.Parameters.AddWithValue("@Semailid", txtemailid.Text.Trim());
            cmd.Parameters.AddWithValue("@username", txtusername.Text.Trim());
            cmd.Parameters.AddWithValue("@password", txtpassword.Text.Trim());

      cmd.ExecuteNonQuery();
                conn.Close();
             //   gvStudent.DataBind();
           //   lbl1.Text = "updated succesfully";
               string message = "Your details have been saved successfully.";
                string script = "window.onload = function(){ alert('";
                script += message;
              script += "')};";
              ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

     //       Response.Redirect("AccountDetails.aspx");

        }
     private void loadStudents()
    {
        try
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string query = "SELECT Sid,SFname,SLname,Saddress,Sdob,SSchoolCollege,Scontactno,gamename,Semailid,username,password FROM Student;";
            SqlCommand cmd = new SqlCommand(query, conn);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            cmd.ExecuteNonQuery();
     //       gvStudent.DataSource = ds.Tables[0];
        //    gvStudent.DataBind();

            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }

        }
        catch (Exception ex)
        {
            lbl1.Text = ex.Message.ToString();
        }

    }
}