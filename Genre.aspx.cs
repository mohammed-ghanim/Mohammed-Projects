using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Genre : System.Web.UI.Page
{
    MoviesEntities db = new MoviesEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Search();
        }
    }
    protected void Search()
    {
        string gid =Request.QueryString["ID"];
    }
    protected void MovieGenre()
    {
    }
    protected void repMovieGenre_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }
}