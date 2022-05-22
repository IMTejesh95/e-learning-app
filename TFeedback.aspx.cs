using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class TFeedback : System.Web.UI.Page
{
    DBConnection db;
    DataTable tab;
    DataRow row;
    string message, too;
    public String uname;

    protected void Page_Load(object sender, EventArgs e)
    {
        db = new DBConnection();
        uname = Session["user"].ToString();


        if (!IsPostBack)
        {

            tab = db.getSUname();
            liststudents.Items.Clear();
            liststudents.Items.Add("--Select--");
            for (int i = 0; i < tab.Rows.Count; i++)
            {
                row = tab.Rows[i];
                liststudents.Items.Add(row["uname"].ToString());

            }
        }
       

    }
    protected void btnfeedback_Click(object sender, EventArgs e)
    {

        message = tcomment.Text;

        too = liststudents.SelectedItem.Value;

        if (db.StoreTFeedback(uname, too, message) == true)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Feedback Stored Successfully..!!' )", true);
          //  liststudents.Text = "";
            tcomment.Text = "";
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Unable to submit Feedback' )", true);
        }
    }
}