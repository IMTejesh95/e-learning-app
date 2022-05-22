using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class DeleteSMessage : System.Web.UI.Page
{

    DBConnection db;
    int mess;

    protected void Page_Load(object sender, EventArgs e)
    {
        db = new DBConnection();

        mess = Int32.Parse(Request.QueryString["mid"].ToString());

        db.deleteMessage(mess);

        Response.Redirect("SInbox.aspx");
    }
}