using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class TeacherUploadExam : System.Web.UI.Page
{
    public DBConnection db;
    public DataTable tab, tab1;
    public DataRow row, row1;
    public int x, i;
    public string cname, uname;
    string mainc, subcat, parsub, format;
    char[] cc = { '.' };

    protected void Page_Load(object sender, EventArgs e)
    {
        db = new DBConnection();

        uname = Session["user"].ToString();

      //  form.Visible = true;


   
        if (!IsPostBack)
        {
            //tab = db.GetMainCourseCat();

            //for (int i = 0; i < tab.Rows.Count; i++)
            //{
            //    row = tab.Rows[i];
            //    listmainc.Items.Add(row["maincat"].ToString());
            //}
            tab1 = db.getTeacherCat(uname);
            for (int i = 0; i < tab1.Rows.Count; i++)
            {
                row = tab1.Rows[i];
                mainc = row["maincat"].ToString();
                subcat = row["subcat"].ToString();
            }

            tab = db.GetSub(mainc, subcat);
            listparsub.Items.Clear();
            listparsub.Items.Add("--Select--");
            for (int i = 0; i < tab.Rows.Count; i++)
            {
                row = tab.Rows[i];
                listparsub.Items.Add(row["parsub"].ToString());
            }
        }

    }

    protected void listmainc_SelectedIndexChanged1(object sender, EventArgs e)
    {

        //tab = db.GetSubCourseCat(listmainc.SelectedItem.Value);
        //listsubcourse.Items.Clear();
        //listsubcourse.Items.Add("--Select--");
        //for (int i = 0; i < tab.Rows.Count; i++)
        //{
        //    row = tab.Rows[i];
        //    //  listsubcourse.Items.Add("----select----");
        //    listsubcourse.Items.Add(row["substream"].ToString());
        //}
    }
    protected void listsubcourse_SelectedIndexChanged1(object sender, EventArgs e)
    {
        //tab = db.GetParSub(listsubcourse.SelectedItem.Value);
        //listparsub.Items.Clear();
        //listparsub.Items.Add("--Select--");
        //for (int i = 0; i < tab.Rows.Count; i++)
        //{
        //    row = tab.Rows[i];
        //    listparsub.Items.Add(row["parsub"].ToString());
        //}
    }
}