﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TeacherHome : System.Web.UI.Page
{
    public string uname;

    protected void Page_Load(object sender, EventArgs e)
    {
        uname = Session["user"].ToString();
    }
}