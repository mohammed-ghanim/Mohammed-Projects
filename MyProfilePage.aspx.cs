using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyProfilePage : System.Web.UI.Page
{
    MoviesEntities db = new MoviesEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {

        }
        else
        {
            Response.Redirect("ErrorPage.aspx");
        }
    }
    
}