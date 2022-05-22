using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class DisplayNotes : System.Web.UI.Page
{

   public DBConnection db;
    public DataTable tab;
    public DataRow row;
    public int i, x;
    public string uname;

    protected void Page_Load(object sender, EventArgs e)
    {
        uname = Session["user"].ToString();
        db = new DBConnection();

        tab = (DataTable)Session["tab"];
       
    }
    

}