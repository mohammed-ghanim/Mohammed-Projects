using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class topMovies : System.Web.UI.Page
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

            repMovies.DataSource = db.TopTenMovies.ToList();
            repMovies.DataBind();
    }

    protected void repMovies_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        //CheckBoxList innerList = (CheckBoxList)e.Item.FindControl("cblGenre");
        //HiddenField MovieID = (HiddenField)e.Item.FindControl("HFMovie");

        //List<MovieGenre> list = MovieGenre.load().Where(x => x.MovieID == int.Parse(MovieID.Value)).ToList();
        //List<Genre> GenreList = Genre.load();


        //innerList.DataSource = Genre.load();
        //innerList.DataTextField = "Name";
        //innerList.DataValueField = "ID";
        //innerList.DataBind();

        //foreach (ListItem c in innerList.Items)
        //{
        //    if (list.Where(genre => genre.GenreId == int.Parse(c.Value)).Count() > 0)
        //        c.Selected = true;
        //}

    }
}