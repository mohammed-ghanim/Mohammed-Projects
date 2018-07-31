using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MovieDetail : System.Web.UI.Page
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
        if (!IsPostBack)
        {
            string movieTitle = Request.QueryString["MovieTitle"];
            repMovie.DataSource = db.Movies.Where(m => m.Title == movieTitle).ToList();
            repMovie.DataBind();
        }
    }

    protected void repMovie_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }
}