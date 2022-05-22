using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class SViewFeedback : System.Web.UI.Page
{
    public string uname;
    public DBConnection db;
    public DataTable tab;
    public DataRow row;
    public int i;

    protected void Page_Load(object sender, EventArgs e)
    {
        db = new DBConnection();
        uname = Session["user"].ToString();

        tab = db.getStudentsFeedback(uname);
    }
}