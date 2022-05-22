using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class AdminCourseMng : System.Web.UI.Page
{
    DBConnection db;
    string mainc, substr, parsub;

    protected void Page_Load(object sender, EventArgs e)
    {
        db = new DBConnection();

    }
    //protected void mngcoursebtn_Click(object sender, EventArgs e)
    //{
       
    //}
    protected void mngcoursebtn_Click1(object sender, EventArgs e)
    {
        mainc = tmainc.Text;
        substr = tsubstream.Text;
        parsub = tparsub.Text;
       
        if (db.AddCourseCat(mainc, substr, parsub) == true)
        {
            Directory.CreateDirectory(Server.MapPath("StudyMaterial/" + mainc));
            Directory.CreateDirectory(Server.MapPath("StudyMaterial/" + mainc + "/" + substr));
            Directory.CreateDirectory(Server.MapPath("StudyMaterial/" + mainc + "/" + substr + "/" + parsub));
            Directory.CreateDirectory(Server.MapPath("StudyMaterial/" + mainc + "/" + substr + "/" + parsub + "/" + "Documents"));
            Directory.CreateDirectory(Server.MapPath("StudyMaterial/" + mainc + "/" + substr + "/" + parsub + "/" + "Audios"));
            Directory.CreateDirectory(Server.MapPath("StudyMaterial/" + mainc + "/" + substr + "/" + parsub + "/" + "Videos"));
            Directory.CreateDirectory(Server.MapPath("StudyMaterial/" + mainc + "/" + substr + "/" + parsub + "/" + "Others"));
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('New Courses Added Successfully..!!' )", true);

            //Response.Redirect("AdminManageCat.aspx");
            //tpcat.Text = "";
            //tsubcat.Text = "";
            //tparcat.Text = "";
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Adding New Category Failed..!!' )", true);
            tmainc.Text = "";
            tsubstream.Text = "";
            tparsub.Text = "";
        }
    }
}