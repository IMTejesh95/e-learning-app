using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class SProfile : System.Web.UI.Page
{
    public string uname;
   public  DBConnection db;
    public DataTable tab;
    public DataRow row;
    string usrname, fname, lname, email, phone, add, city, country,  age, gender, qual, occu;
    public string pimg;

    protected void Page_Load(object sender, EventArgs e)
    {
        db = new DBConnection();
        uname = Session["user"].ToString();

        row = db.GetUserProfile(uname);
        pimg = db.GetProfilePic(uname);

        if (!IsPostBack)
        {
            tuname.Text = row["username"].ToString();
            tfname.Text = row["fname"].ToString();
            tlname.Text = row["lname"].ToString();
            temail.Text = row["email"].ToString();
            tphone.Text = row["phone"].ToString();
            taddress.Text = row["address"].ToString();
            tcity.Text = row["city"].ToString();
            lcountry.Text = row["country"].ToString();
            tgender.Text = row["gender"].ToString();
            tage.Text = row["age"].ToString();
            tqual.Text = row["qualification"].ToString();
            tocc.Text = row["occupation"].ToString();

        }

        btnupdate.Visible = true;
        btnsubmit.Visible = false;
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        tfname.Enabled = true;
        tlname.Enabled = true;
        tphone.Enabled = true;
        taddress.Enabled = true;
        tcity.Enabled = true;
        lcountry.Enabled = true;
        tgender.Enabled = true;
        tage.Enabled = true;
        tqual.Enabled = true;
        tocc.Enabled = true;

        btnupdate.Visible = false;
        btnsubmit.Visible = true;
    }
   
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        fname = tfname.Text;
        lname = tlname.Text;
        phone = tphone.Text;
        add = taddress.Text;
        city = tcity.Text;
        country = lcountry.SelectedItem.Value;
        gender = tgender.Text;
        age = tage.Text;
        qual = tqual.Text;
        occu = tocc.Text;



        if (db.UpdateStudentProfile(uname, fname, lname, phone, add, city, country, age, gender, qual, occu) == true)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Profile Updated..!!' )", true);
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Failed to update profile..!!' )", true);
        }
        btnupdate.Visible = false;
        btnsubmit.Visible = true;
    }
}