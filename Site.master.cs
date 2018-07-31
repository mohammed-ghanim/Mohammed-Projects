using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site : System.Web.UI.MasterPage
{
    MoviesEntities db = new MoviesEntities();
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Session["user"] == null)
        {
            LogedName.Text = "annonymous";
            lbLogout.Text = "LogIn";
        }
        else
        {
            Account a = (Account)Session["user"];
            //LogedName.Text = a.Username;
            LogedName.Text = a.Username;
            lbLogout.Text = "LogOut";
        }

        if (!IsPostBack)
        {
            Search();
        }
    }
    protected void Search()
    {
        repGen.DataSource = db.Genres.ToList();
        repGen.DataBind();
    }
    protected void lbLogout_Click(object sender, EventArgs e)
    {
        if(lbLogout.Text == "LogIn")
        {
            Response.Redirect("LogInPage.aspx");
        }
        else
        {
            Session["User"] = null;
            Response.Redirect("Home.aspx");
        }
    }
    protected void repGen_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }
}