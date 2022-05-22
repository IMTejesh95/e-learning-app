using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    DBConnection db;
    string email, pass, type, user;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        db = new DBConnection();
    }


    protected void loginbtn_Click(object sender, EventArgs e)
    {
        email = txtemail.Text;
        pass =  txtpass.Text;

       type =  db.checkLogin(email, pass, type);

       
            if (type == "Teacher")
            {
                user = email.Substring(0, email.IndexOf("@"));
                Session.Add("user", user);
                Response.Redirect("TeacherHome.aspx");
            }
            else if (type == "Student")
            {
                user = email.Substring(0, email.IndexOf("@"));
                Session.Add("user", user);
                Response.Redirect("StudentHome.aspx");
            }
            else if(txtemail.Text == "admin" && txtpass.Text == "admin")
            {
                Response.Redirect("AdminHome.aspx");
            }
            else
            {
                lbllog.Text = "Login Failed";
            }
        }
        
    }
