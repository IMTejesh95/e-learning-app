using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class StudyCourses : System.Web.UI.Page
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

        form.Visible = true;
        
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
        form.Visible = false;

        mainc = listmainc.SelectedItem.Value;
        subcat = listsubcourse.SelectedItem.Value;
        parsub = listparsub.SelectedItem.Value;
     //   format = listformat.SelectedItem.Value;

        tab = db.getStudyCourses(mainc, subcat, parsub);

        //Session.Add("tab", tab);
        Response.Write("<asp:Panel ID='result' runat='server'>");
        Response.Write("<div class='clearfix margin_bottom10'></div>");
        Response.Write("<div class='page_title3'><div class='container'><h1>Available Courses  </h1></div>");
            Response.Write("</div>");
        Response.Write("<div class='clearfix'></div>");
            Response.Write("<div class='content_fullwidth'><div class='container'>");
        Response.Write("<table cellspacing='40px' cellpadding='20px'>");
                x = 0;
                Response.Write("<tr height=150>");
                for (int i = 0; i < tab.Rows.Count; i++)
                {
                    row = tab.Rows[i];
                    string path = "StudyMaterial/" + row["maincat"].ToString() + "/" + row["subcat"].ToString() + "/" + row["parcat"].ToString();

                    Response.Write("<td width=100> <br><img src='images/pdf.png' width100 height=100 /><br><a href='Details.aspx?docadd=" + row["docadd"].ToString() + "'>" + row["fname"].ToString() + "</a></td>");

                    //Response.Write("<td width=100> <br><img src=" + path + "/" + row["docadd"].ToString() + " width100 height=100 /><br><a href='Details.aspx?docadd=" + row["docadd"].ToString() + "'>" + row["fname"].ToString() + "</a></td>");
                    x++;
                    if (x >= 6)
                    {
                        x = 0;
                        Response.Write("</tr><tr height=150>");
                    }

                }
                Response.Write("</tr>");
           


        Response.Write("</table>");

        Response.Write("</div></div>");

        Response.Write("</asp:Panel>");
        //Response.Redirect("DisplayNotes.aspx");
    }
}