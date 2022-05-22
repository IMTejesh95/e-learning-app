using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class AdminAddFiles : System.Web.UI.Page
{
    DBConnection db;
    DataTable tab;
    DataRow row;
    string mainc, subcat, parsub, fname, authname, docno, price, desc, upfile;
     char[] cc = { '.' };

    protected void Page_Load(object sender, EventArgs e)
    {
        db = new DBConnection();

        if (!IsPostBack)
        {
            tab = db.GetMainCourseCat();
           
            for (int i = 0; i < tab.Rows.Count; i++)
            {
                row = tab.Rows[i];
                listmainc.Items.Add(row["maincat"].ToString());
            }
        }

    }

    protected void listmainc_SelectedIndexChanged1(object sender, EventArgs e)
    {

        tab = db.GetSubCourseCat(listmainc.SelectedItem.Value);
        listsubcourse.Items.Clear();
        listsubcourse.Items.Add("--Select--");
        for (int i = 0; i < tab.Rows.Count; i++)
        {
            row = tab.Rows[i];
            listsubcourse.Items.Add(row["substream"].ToString());
        }
    }
    protected void listsubcourse_SelectedIndexChanged1(object sender, EventArgs e)
    {
        tab = db.GetParSub(listsubcourse.SelectedItem.Value);
        listparsub.Items.Clear();
        listparsub.Items.Add("--Select--");
        for (int i = 0; i < tab.Rows.Count; i++)
        {
            row = tab.Rows[i];
            listparsub.Items.Add(row["parsub"].ToString());
        }
    }
    protected void addcoursedoc_Click(object sender, EventArgs e)
    {
        mainc = listmainc.SelectedItem.Value;
        subcat = listsubcourse.SelectedItem.Value;
        parsub = listparsub.SelectedItem.Value;
        fname = tfname.Text;
        authname = tauthname.Text;
        docno = tdno.Text;
        price = tprice.Text;
        desc = tdesc.Text;

        upfile = docfile.FileName.ToString();

        string[] ss;
        char[] cc = { '.' };

        ss = upfile.Split(cc);
        string date, time;
        date = System.DateTime.Now.ToShortDateString();
        time = System.DateTime.Now.ToShortTimeString();
        if (docfile.HasFile)
        {
            Directory.CreateDirectory(Server.MapPath("StudyMaterial/" + mainc + "/" + subcat + "/" + parsub + "/" + "Documents"));

            if (ss[1].Equals("txt") || ss[1].Equals("doc") || ss[1].Equals("docx"))
            {
                docfile.SaveAs(Server.MapPath("~/StudyMaterial/" + mainc + "/" + subcat + "/" + parsub + "/Documents/") + docfile.FileName);

            }
            else
            {
                if (ss[1].Equals("mp3") || ss[1].Equals("wmv"))
                {
                    docfile.SaveAs(Server.MapPath("~/StudyMaterial/" + mainc + "/" + subcat + "/" + parsub + "/Audios/") + docfile.FileName);

                }
                else
                {
                    if (ss[1].Equals("mp4") || ss[1].Equals("flv") || ss[1].Equals("3gp"))
                    {
                        docfile.SaveAs(Server.MapPath("~/StudyMaterial/" + mainc + "/" + subcat + "/" + parsub + "/Videos/") + docfile.FileName);
                        //string efile = "";
                        //efile = fileUpload.FileName;
                        //key = Class1.KeyGenerator();
                        //mail = cnn.GetEmail(username);
                        //Class1.SendMail(mail, efile, key);
                    }
                    if (!ss[1].Equals("mp4") || !ss[1].Equals("flv") || !ss[1].Equals("3gp") || !ss[1].Equals("mp4") || !ss[1].Equals("flv") || !ss[1].Equals("3gp") || !ss[1].Equals("mp4") || !ss[1].Equals("flv") || !ss[1].Equals("3gp"))
                    {
                        docfile.SaveAs(Server.MapPath("~/StudyMaterial/" + mainc + "/" + subcat + "/" + parsub + "/Others/") + docfile.FileName);
                        //string efile = "";
                        //efile = fileUpload.FileName;
                        //key = Class1.KeyGenerator();
                        //mail = cnn.GetEmail(username);
                        //Class1.SendMail(mail, efile, key);
                    }
                    else
                    {

                        docfile.SaveAs(Server.MapPath("~/StudyMaterial/" + mainc + "/" + subcat + "/" + parsub + "/Others/") + docfile.FileName);
                        //string efile = "";
                        //efile = fileUpload.FileName;
                        //key = Class1.KeyGenerator();
                        //mail = cnn.GetEmail(username);
                        //Class1.SendMail(mail, efile, key);
                        //cnn.StoreFile(username, fname, key);

                    }
                }
            }
        }
        // docfile.SaveAs(Server.MapPath("~/StudyMaterial/" + mainc + "/" + subcat + "/" + parsub + "/" + docfile.FileName));


            if (db.AddCourseDoc(mainc, subcat, parsub, fname, authname, docno, price, desc, upfile) == true)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('New Document Added Successfully..!!' )", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Failed TO add new File' )", true);
            }
        }


    
}