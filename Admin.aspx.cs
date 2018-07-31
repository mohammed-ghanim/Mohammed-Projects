using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    MoviesEntities db = new MoviesEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Search();
        }
        var a = db.Roles.Count(m => m.RoleName != "Admin");
    }
    private void Search()
    {

        repMovie.DataSource = db.Movies.ToList();
        repMovie.DataBind();

    }
    protected void lbCreate_Click(object sender, EventArgs e)
    {
        mvMovies.ActiveViewIndex = 1;
    }
    protected void repMovie_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        Movie m = db.Movies.Find(int.Parse(e.CommandArgument.ToString()));
        if (e.CommandName == "edit")
        {
            lbUID.Text = m.ID.ToString();
            txtUTitle.Text = m.Title.ToString();
            txtUStarring.Text = m.Starring.ToString();
            txtUSummary.Text = m.Summary.ToString();
            mvMovies.ActiveViewIndex = 2;
        }
        else
        {
            lbDID.Text = m.ID.ToString();
            txtDTitle.Text = m.Title.ToString();
            txtDStarring.Text = m.Starring.ToString();
            txtDSummary.Text = m.Summary.ToString();
            mvMovies.ActiveViewIndex = 3;
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        Movie m = new Movie();
        m.Title = txtTitle.Text;
        m.mYear = int.Parse(txtYear.Text);
        m.Starring = txtStarring.Text;
        m.Summary = txtSummary.Text;

        string photoName = "";
        string extension = "";
        if (FuPhoto.HasFile)
        {
            photoName = Guid.NewGuid().ToString();
            extension = System.IO.Path.GetExtension(FuPhoto.PostedFile.FileName);
        }
        else
        {
            photoName = "Default";
            extension = "jpg";
        }
        string filename = photoName + "." + extension;
        m.Poster = filename;
        db.Movies.Add(m);
        db.SaveChanges();
        FuPhoto.SaveAs(Server.MapPath("~/images/" + filename));
        txtTitle.Text = string.Empty;
        txtYear.Text = string.Empty;
        txtStarring.Text = string.Empty;
        txtSummary.Text = string.Empty;

        Search();
        mvMovies.ActiveViewIndex = 0;
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        Movie m1 = db.Movies.Find(int.Parse(lbUID.Text));
        m1.ID = int.Parse(lbUID.Text);
        m1.Title = txtUTitle.Text;
        m1.Starring = txtUStarring.Text;
        m1.Summary = txtUSummary.Text;

        db.SaveChanges();

        lbUID.Text = string.Empty;
        txtUTitle.Text = string.Empty;
        txtUYear.Text = string.Empty;
        txtUStarring.Text = string.Empty;
        txtUSummary.Text = string.Empty;

        Search();
        mvMovies.ActiveViewIndex = 0;
    }
    protected void Cancel_Click(object sender, EventArgs e)
    {
        mvMovies.ActiveViewIndex = 0;
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Movie m = db.Movies.Find(int.Parse(lbDID.Text));
        db.Movies.Remove(m);
        db.SaveChanges();

        lbDID.Text = string.Empty;
        txtDTitle.Text = string.Empty;
        txtDYear.Text = string.Empty;
        txtDStarring.Text = string.Empty;
        txtDSummary.Text = string.Empty;

        Search();
        mvMovies.ActiveViewIndex = 0;
    }
}