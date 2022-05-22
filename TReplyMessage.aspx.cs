using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class TReplyMessage : System.Web.UI.Page
{
    DBConnection db;
    DataTable tab;
    DataRow row;
    string message;
    public String uname;
    string too, fromm, subj, mess;


    protected void Page_Load(object sender, EventArgs e)
    {
        db = new DBConnection();
        uname = Session["user"].ToString();
        ttoo.Text = Request.QueryString["fromm"].ToString();
    }

    protected void btnsmessage_Click(object sender, EventArgs e)
    {
        too = ttoo.Text;
        subj = tsubject.Text;
        mess = tmess.Text;

        if (db.StoreTMessage(uname, too, subj, mess) == true)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Your Message has been Sent..!!' )", true);
            // listeachers.Text = "";
            tsubject.Text = "";
            tmess.Text = "";
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Unable to send message..!!' )", true);
        }
    }
}