using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_pages_ViewFeedback : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-9F882SJ;Initial Catalog=SCMDB;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void gvfeedback_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            Int32 feedbackid = Convert.ToInt32(gvfeedback.DataKeys[e.RowIndex].Value);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string query = "DELETE FROM feedback WHERE feedbackid =@feedbackid";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@feedbackid", feedbackid);
            cmd.ExecuteNonQuery();
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }

        }
        catch (Exception ex)
        {
            
        }

    }

}