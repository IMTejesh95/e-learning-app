using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;


public partial class TProfile : System.Web.UI.Page
{
    public string uname;
   public  DBConnection db;
    public DataTable tab;
    public DataRow row;
    string usrname, fname, lname, email, phone, add, city, country, age, gender, qual, occu, maincat, subcat;
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
            listmainc.Text = row["maincat"].ToString();
            listsubcourse.Text = row["subcat"].ToString();

             tab = db.GetMainCourseCat();

            for (int i = 0; i < tab.Rows.Count; i++)
            {
                row = tab.Rows[i];
                listmainc.Items.Add(row["maincat"].ToString());
            }
       

        }

        btnupdate.Visible = true;
        btnsubmit.Visible = false;

          
    }
   

    protected void listmainc_SelectedIndexChanged1(object sender, EventArgs e)
    {

        tab = db.GetSubCourseCat(listmainc.SelectedItem.Value);
        listsubcourse.Items.Clear();
        listsubcourse.Items.Add("--Select--");
        for (int i = 0; i < tab.Rows.Count; i++)
        {
            row = tab.Rows[i];
          //  listsubcourse.Items.Add("----select----");
            listsubcourse.Items.Add(row["substream"].ToString());
        }
    
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
        listmainc.Enabled = true;
        listsubcourse.Enabled = true;

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
        maincat = listmainc.SelectedItem.Value;
        subcat = listsubcourse.SelectedItem.Value;



        if (db.UpdateTeacherProfile(uname, fname, lname, phone, add, city, country, age, gender, qual, occu, maincat, subcat) == true)
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