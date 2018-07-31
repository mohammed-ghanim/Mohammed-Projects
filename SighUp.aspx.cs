using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SighUp : System.Web.UI.Page
{
    MoviesEntities db = new MoviesEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string s;
        Account a = new Account();
        a.Username = txtFirstName.Text;
        a.Password = txtPaaword.Text;
        a.RoleID = 2;
        SqlConnection conn = new SqlConnection("Data Source = .; Initial Catalog = Movies; User=sa; pwd = a;");
        conn.Open();
        String sql = "Select Username from Accounts where Username=@Username";
        SqlDataAdapter da = new SqlDataAdapter(sql, conn);
        da.SelectCommand.Parameters.AddWithValue("@Username",a.Username);
        //da.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataTable dt = new DataTable();
   
        da.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
            for (int j = 0; j < dt.Columns.Count; j++)
            {
                object o = dt.Rows[i].ItemArray[j];
                //if you want to get the string
                 s = dt.Rows[i].ItemArray[j].ToString();
                 lblSignupMessage.Text = "There is already an existing recored with this name";
                 //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "Confirm();", true);
                 ClientScript.RegisterClientScriptBlock(this.GetType(), "blah", "$(document).ready(function(){$('#lblSignupMessage').fadeIn(8000);});", true);
                 return;
            }

       
            db.Accounts.Add(a);
            db.SaveChanges();
            Response.Redirect("LoginPage.aspx");
        
        
        
        
    }
}