using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class OnlineExam : System.Web.UI.Page
{
    public DBConnection db;
    public DataTable tab, tab1;
    public DataRow row, row1;
    public int x =0, i, qid;
    public string cname, uname, q1, o1, o2, o3, o4;
    string mainc, subcat, parsub, format;
    char[] cc = { '.' };

    protected void Page_Load(object sender, EventArgs e)
    {
        db = new DBConnection();

       // uname = Session["user"].ToString();

        

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
          //  listsubcourse.Items.Add("----select----");
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
    protected void btnCourses_Click(object sender, EventArgs e)
    {
      
        mainc = listmainc.SelectedItem.Value;
        subcat = listsubcourse.SelectedItem.Value;
        parsub = listparsub.SelectedItem.Value;

        Session.Add("subject", parsub);
     //   format = listformat.SelectedItem.Value;

     Response.Redirect("SGiveExamaspx.aspx");
   
   
    }
}