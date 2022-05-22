using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class SFeedback : System.Web.UI.Page
{
    DBConnection db;
    DataTable tab;
    DataRow row;
    string message;
    public String uname;

    protected void Page_Load(object sender, EventArgs e)
    {
        db = new DBConnection();
        uname = Session["user"].ToString();

        tuname.Text = uname;
       
    }
    protected void btnfeedback_Click(object sender, EventArgs e)
    {

        message = tcomment.Text;

        if (db.StoreSFeedback(uname, message) == true)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Feedback Stored Successfully..!!' )", true);
            tuname.Text = "";
            tcomment.Text = "";
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Unable to submit Feedback' )", true);
        }
    }
}