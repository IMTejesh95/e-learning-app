using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class SMessage : System.Web.UI.Page
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

        if (!IsPostBack)
        {

            tab = db.getTUname();
            listeachers.Items.Clear();
            listeachers.Items.Add("--Select--");
            for (int i = 0; i < tab.Rows.Count; i++)
            {
                row = tab.Rows[i];
                listeachers.Items.Add(row["uname"].ToString());

            }
        }
    }

    protected void btnsmessage_Click(object sender, EventArgs e)
    {
        too = listeachers.SelectedItem.Value;
        subj = tsubject.Text;
        mess = tmess.Text;

        if (db.StoreSMessage(uname, too, subj, mess) == true)
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