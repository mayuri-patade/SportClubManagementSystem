using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_pages_coachinfo : System.Web.UI.Page
{
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
                ddl2.DataSource = dt;
                ddl2.DataTextField = dt.Columns["gamename"].ToString();
                ddl2.DataValueField = dt.Columns["gamename"].ToString();
                ddl2.DataBind();
            }
        }
        catch (Exception ex)
        {

            lbl2.Text = ex.Message.ToString();
        }
    }

    protected void ADD_Click(object sender, EventArgs e)
    {
        if (ADD.Text == "Add")
        {
            insertcoachinfo();
        }
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
            string query = "SELECT cname,caddress,ceducation,cexperience,csalary,gamename,cemailid,ccontactno FROM coach;";
            SqlCommand cmd = new SqlCommand(query, conn);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            cmd.ExecuteNonQuery();
            gvcoachinfo.DataSource = ds.Tables[0];
            gvcoachinfo.DataBind();

            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }

        }
        catch (Exception ex)
        {
        }

    }

  
        private void insertcoachinfo()
        {
        SqlConnection con = null;
        SqlCommand cmd = null;

        try
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["SCMDBConnectionString"].ConnectionString);
            con.Open();
            String query = "insert into coach(cname,caddress,ceducation,cexperience,csalary,gamename,cemailid,ccontactno)values(@cname,@caddress,@ceducation,@cexperience,@csalary,@gamename,@cemailid,@ccontactno)";
            cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@cname", TextBox1.Text.ToString());
            cmd.Parameters.AddWithValue("@caddress", TextBox2.Text.ToString());
            cmd.Parameters.AddWithValue("@cemailid", TextBox3.Text.ToString());
            cmd.Parameters.AddWithValue("@ccontactno", TextBox4.Text.ToString());
            cmd.Parameters.AddWithValue("@ceducation", TextBox5.Text.ToString());
            cmd.Parameters.AddWithValue("@cexperience", TextBox6.Text.ToString());
            cmd.Parameters.AddWithValue("@gamename", ddl2.SelectedValue);
            cmd.Parameters.AddWithValue("@csalary", TextBox7.Text.ToString());

            cmd.ExecuteNonQuery();
            con.Close();
           lbl2.Text = "Added  Successfully";
        //    string message = "Your details have been saved successfully.";
       //     string script = "window.onload = function(){ alert('";
      //      script += message;
     //       script += "')};";
      //      ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            
            Response.Redirect("coachinfo.aspx");
            TextBox2.Text = String.Empty;
            TextBox3.Text = String.Empty;
              TextBox4.Text = String.Empty;
              TextBox5.Text = String.Empty;
              TextBox6.Text = String.Empty;
              TextBox7.Text = String.Empty;
        }
        catch (Exception ex)
        {
            lbl2.Text = ex.Message.ToString();
        }

    }


   
    protected void gvcoachinfo_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection conn = null;
        try
        {
            Int32 cid = Convert.ToInt32(gvcoachinfo.DataKeys[e.RowIndex].Value);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string query = "DELETE FROM coach WHERE cid =@cid";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@cid", cid);
            cmd.ExecuteNonQuery();
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }

        }
        catch (Exception ex)
        {
            lbl2.Text = ex.Message.ToString();
        }

    }

    protected void gvcoachinfo_SelectedIndexChanged1(object sender, EventArgs e)
    {
        string cid = gvcoachinfo.DataKeys[gvcoachinfo.SelectedRow.RowIndex].Value.ToString();
        ViewState["cid"] = cid;
        ADD.Text = "Update";

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SCMDBConnectionString"].ConnectionString);
            conn.Open();
            Int32 cname = Convert.ToInt32(ViewState["cname"]);
            string query = "UPDATE coach SET caddress = @caddress, ceducation = @ceducation, cexperience = @cexperience, csalary = @csalary, gamename = @gamename, cemailid = @cemailid, ccontactno = @ccontactno WHERE (cname = @cname)";
            SqlCommand cmd = new SqlCommand(query, conn);

            cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@cname", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@caddress", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@cemailid", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@ccontactno", TextBox4.Text.Trim());
            cmd.Parameters.AddWithValue("@ceducation", TextBox5.Text.Trim());
            cmd.Parameters.AddWithValue("@cexperience", TextBox6.Text.Trim());
            cmd.Parameters.AddWithValue("@gamename", ddl2.SelectedValue);
            cmd.Parameters.AddWithValue("@csalary", TextBox7.Text.Trim());

            cmd.ExecuteNonQuery();
                conn.Close();
                gvcoachinfo.DataBind();
                lbl2.Text = "upadated succesfully";
                Response.Redirect("coachinfo.aspx");

        }
    }
