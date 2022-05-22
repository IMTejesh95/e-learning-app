using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;


public partial class Registration : System.Web.UI.Page
{
    DBConnection db;
    string uname, email, pass, repass,type, city, country, add, user;
    DataTable tab;
    DataRow row;

    protected void Page_Load(object sender, EventArgs e)
    {
        db = new DBConnection();

    }
    protected void tsignup_Click(object sender, EventArgs e)
    {
        uname = tuname.Text;
        email = temail.Text;
        pass = tpass.Text;
        repass = trepass.Text;
        type = ttype.SelectedItem.ToString();
        city = tcity.Text;
        country = lcountry.SelectedItem.ToString();
        add = tadd.Text;

        if (db.checkExist(temail.Text))
        {
            if (db.storeUser( uname, email, pass,type, city, country, add) == true)
            {
               
                user = email.Substring(0, email.IndexOf("@"));
                   Directory.CreateDirectory(Server.MapPath("Users/" + user));
                Directory.CreateDirectory(Server.MapPath("Users/" + user +"/Downloads" ));
                Response.Redirect("Login.aspx");
            }
            else
            {
                lbl.Text = "Registration failed";
            }
        }
            else
            {
             lbl.Text = "User Already Registered";
            
            }
        
    }
}