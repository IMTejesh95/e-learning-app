using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class SGiveExamaspx : System.Web.UI.Page
{
    public DBConnection db;
    public DataTable tab, tab1;
    public DataRow row, row1;
    public int  result = 0, qid;
    public static int x = 0;
    public string cname, uname, q1, o1, o2, o3, o4, ans;
    string mainc, subcat, parsub, format;
    char[] cc = { '.' };

    protected void Page_Load(object sender, EventArgs e)
    {
        db = new DBConnection();

        // uname = Session["user"].ToString();


        parsub = Session["subject"].ToString();

       

            tab = db.getQuestions(parsub);
            row = tab.Rows[x];
            //if (x == 0)
            //{
            //    btnpre.Visible = false;
            //    btnnext.Visible = true;
            //    btnsubmit.Visible = false;
            //}
            qid = Int32.Parse(row["qid"].ToString());
            que.Text = x.ToString() + ". " + row["question"].ToString();
            l1.Text = row["option1"].ToString();
            l2.Text = row["option2"].ToString();
            l3.Text = row["option3"].ToString();
            l4.Text = row["option4"].ToString();
       
    }
    protected void btnpre_Click(object sender, EventArgs e)
    {

   
       // tab = db.getQuestions(parsub);
        if (IsPostBack)
        {
            x--;
            if(x >= 0)
        {

            row = tab.Rows[x];

            qid = Int32.Parse(row["qid"].ToString());
            que.Text = x.ToString() + ". " + row["question"].ToString();
            l1.Text = row["option1"].ToString();
            l2.Text = row["option2"].ToString();
            l3.Text = row["option3"].ToString();
            l4.Text = row["option4"].ToString();
        }
        }
    }
    protected void btnnext_Click(object sender, EventArgs e)
    {

       
       // tab = db.getQuestions(parsub);
        if (IsPostBack)
        {
            x++;
            if (x <= tab.Rows.Count)
            {
                row = tab.Rows[x];

                qid = Int32.Parse(row["qid"].ToString());
                que.Text = x.ToString() + ". " + row["question"].ToString();
                l1.Text = row["option1"].ToString();
                l2.Text = row["option2"].ToString();
                l3.Text = row["option3"].ToString();
                l4.Text = row["option4"].ToString();
            }
        }

        if(op1.Checked)
        {
            ans = ans+ l1.Text + ":";
            
        }
        else if (op2.Checked)
        {
            ans = ans + l2.Text + ":";
        }
        else if (op3.Checked)
        {
            ans = ans + l3.Text + ":";
        }
        else if (op4.Checked)
        {
            ans = ans + l4.Text + ":";
        }
    }
    //protected void op1_CheckedChanged(object sender, EventArgs e)
    //{

    //    ans = l1.Text;
    //    string cor = row["eval"].ToString();
    //    if (cor.Equals(ans))
    //    {
    //        result++;
    //    }

    //}
    //protected void op2_CheckedChanged(object sender, EventArgs e)
    //{
    //    ans = l2.Text;
    //    string cor = row["eval"].ToString();
    //    if (cor.Equals(ans))
    //    {
    //        result++;
    //    }

    //}
    //protected void op3_CheckedChanged(object sender, EventArgs e)
    //{
    //    ans = l3.Text;
    //    string cor = row["eval"].ToString();
    //    if (cor.Equals(ans))
    //    {
    //        result++;
    //    } 
    //}
    //protected void op4_CheckedChanged(object sender, EventArgs e)
    //{
    //    ans = l4.Text;
    //    string cor = row["eval"].ToString();
    //    if (cor.Equals(ans))
    //    {
    //        result++;
    //    }
    //}
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

    }
}