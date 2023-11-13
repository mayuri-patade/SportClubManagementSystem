using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserMasterPage_WelcomeUser : System.Web.UI.Page
{
      protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"]!= null)
        {
            Label2.Text += Session["New"].ToString();
        }
    }
    
}