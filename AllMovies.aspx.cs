using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AllMovies : System.Web.UI.Page
{
    MoviesEntities db = new MoviesEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Search();
        }
    }
    private void Search()
    {
        repMovies.DataSource = db.Movies.ToList();
        repMovies.DataBind();
    }
    protected void repMovies_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }
}