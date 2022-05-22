using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Details : System.Web.UI.Page
{
    public DBConnection db;
    public DataTable tab;
    public DataRow row;
    public string uname;
    public int i, x;
   public string fname, docno, docadd, source, desti;
  // File file1;

    protected void Page_Load(object sender, EventArgs e)
    {
        uname = Session["user"].ToString();
        db = new DBConnection();
        

      
        tab = db.getCourseDetails(Request.QueryString["docadd"].ToString());

        for (int i = 0; i < tab.Rows.Count; i++)
        {
            row = tab.Rows[i];
            docno = row["docno"].ToString();
            fname = row["fname"].ToString();
            docadd = row["docadd"].ToString();
        }

        Session.Add("tab", tab);
    }
    
    protected void addcoursebtn_Click(object sender, EventArgs e)
    {

    }
    protected void downloadbtn_Click(object sender, EventArgs e)
    {
        source = Server.MapPath("StudyMaterial/" + row["maincat"].ToString() + "/" + row["subcat"].ToString() + "/" + row["parcat"].ToString())+"/"+docadd.Trim() ;
         desti  = Server.MapPath("Users/"+uname+"/Downloads/"+docadd.Trim() );
         File.Copy(source, desti);
         ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Download Complete' )", true);

    }
}