using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminUsrMgt : System.Web.UI.Page
{
    DBConnection db;
    DataTable tab;
    DataRow row;
    public String uname;
  //  string [] users, active, Deactive;

    protected void Page_Load(object sender, EventArgs e)
    {
        db = new DBConnection();

        lblact.Text = "";
        lbldact.Text = "";
        lbldelete.Text = "";

        if (!IsPostBack)
        {
           
            tab = db.getDeactivUname();

            for (int i = 0; i < tab.Rows.Count; i++)
            {
                row = tab.Rows[i];
                listactive.Items.Add(row["uname"].ToString());

            }

            tab = db.getActiveUname();

            for (int i = 0; i < tab.Rows.Count; i++)
            {
                row = tab.Rows[i];
                listdeactive.Items.Add(row["uname"].ToString());
            }

            tab = db.getAllUname();
            for (int i = 0; i < tab.Rows.Count; i++)
            {
                row = tab.Rows[i];
                listdelete.Items.Add(row["uname"].ToString());
            }
        }
    }

    protected void btnactivate_Click1(object sender, EventArgs e)
    {
        if (db.UpdateStatus(listactive.SelectedItem.Value) == true)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('User is Activated Successfully..!!' )", true);
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Failed to Activate User.!!' )", true);
        }
    }
    protected void btndeactive_Click1(object sender, EventArgs e)
    {
        if (db.RejectStatus(listdeactive.SelectedItem.Value) == true)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('User is De-Activated Successfully..!!' )", true);
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Unable to De-Activate .!!' )", true);
        }
    }
    protected void btndelete_Click1(object sender, EventArgs e)
    {
        if (db.DeleteUser(listdelete.SelectedItem.Value) == true)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('User is Deleted Successfully..!!' )", true);
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('User is Deletion Failed..!!' )", true);
        }
    }
}