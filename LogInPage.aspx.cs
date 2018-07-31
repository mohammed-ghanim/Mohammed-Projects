using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogInPage : System.Web.UI.Page
{
    MoviesEntities db = new MoviesEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        Account a = new Account();
        var user = db.Accounts.Where(u => u.Username == txtUserName.Text && u.Password == txtPassword.Text).SingleOrDefault();
        if (user != null)
        {
            Session["User"] = a;
            if (user.RoleID == 2)
            {
                Response.Redirect("MyProfilePage.aspx");
               
            }
            else if (user.RoleID == 1)
            {
                Response.Redirect("Admin.aspx");
               
            }
            else
            {
                lblLoginMessage.Text = "invalid username and / or password";
            }

            
        }
        else
        {
            lblLoginMessage.Text = "Please Enter username and / or password";
        }
    }
    protected void btnSighUp_Click(object sender, EventArgs e)
    {
        Response.Redirect("SighUp.aspx");
    }
}