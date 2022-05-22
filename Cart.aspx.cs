using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Cart : System.Web.UI.Page
{
    DBConnection db;
    DataTable tab;
    DataRow row;
    public string uname, maincat, subcat, parcat, fname, authname, docno, price, cdesc, img;

    protected void Page_Load(object sender, EventArgs e)
    {
        uname = Session["user"].ToString();
        tab = (DataTable)Session["tab"];

        db = new DBConnection();
       
            row = tab.Rows[0];
            maincat = row["maincat"].ToString();
            subcat = row["subcat"].ToString();
            parcat = row["parcat"].ToString();
            fname = row["fname"].ToString();
            authname = row["authname"].ToString();
            docno = row["docno"].ToString();
            price = row["price"].ToString();
            cdesc = row["ddesc"].ToString();
            //avail = row["avail"].ToString();
            img = row["docadd"].ToString();

            if (db.AddCourse(uname, maincat, subcat, parcat, fname, authname, docno, price, cdesc, img) == true)
            {

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Course is added to Your account..!!' )", true);
                Response.Redirect("DisplayNotes.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Failed to add course..!!' )", true);
            }
        
    }
}