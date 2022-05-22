using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class DisplaySMessage : System.Web.UI.Page
{
    public DBConnection db;
    public DataTable tab;
    public DataRow row;
    public int i;
    public string uname, fromm, subj, msg, date, time;

    protected void Page_Load(object sender, EventArgs e)
    {
        db = new DBConnection();


        // Response.Write(Request.QueryString["msid"]);
        row = db.displayMsg(Int32.Parse(Request.QueryString["mid"]));

        if (!IsPostBack)
        {
            fromm = row["fromm"].ToString();
            subj = row["subject"].ToString();
            msg = row["message"].ToString();
            date = row["date"].ToString();
            time = row["time"].ToString();
        }
    }
    protected void backbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("SInbox.aspx");
    }
    protected void replybtn_Click(object sender, EventArgs e)
    {
        row = db.displayMsg(Int32.Parse(Request.QueryString["mid"]));
        fromm = row["fromm"].ToString();
        Response.Redirect("SReplyMessage.aspx?fromm=" + fromm);

    }
}