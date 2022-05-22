using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class DiaplayAFeedback : System.Web.UI.Page
{
    public DBConnection db;
    public DataTable tab;
    public DataRow row;
    public int i;
    public string uname, fromm, subj, msg, date, time, too;

    protected void Page_Load(object sender, EventArgs e)
    {
        db = new DBConnection();


        // Response.Write(Request.QueryString["msid"]);
        row = db.displayFeedback(Int32.Parse(Request.QueryString["fid"]));

        if (!IsPostBack)
        {
            fromm = row["feedback"].ToString();
            too = row["too"].ToString();
            date = row["date"].ToString();
            time = row["time"].ToString();
        }
    }
    protected void backbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminViewFeedback.aspx");
    }
    protected void replybtn_Click(object sender, EventArgs e)
    {
        row = db.displayFeedback(Int32.Parse(Request.QueryString["fid"]));
        too = row["too"].ToString();
        Response.Redirect("AFeedback.aspx?too=" + too);

    }
}