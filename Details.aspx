<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="clearfix margin_bottom10"></div>


<div class="page_title3">
<div class="container">

	<h1>Course Details</h1>
    <div class="pagenation">&nbsp;<a href="Default.aspx">Home</a> <i>/</i> Details</div>

</div>
</div><!-- page title -->

<div class="clearfix"></div>

     <div>
        <h3>Welcome back, <%=uname %> : Course Details</h3>
    </div>

<div class="content_fullwidth">

<div class="container">

            <%
              
                Response.Write("<div class='container>");
                Response.Write("<div class='row>");
                Response.Write("<div class='col-md-4'>");
               
               
                for (int i = 0; i < tab.Rows.Count; i++)
                {
                    row = tab.Rows[i];
                    string path = "StudyMaterial/" + row["maincat"].ToString() + "/" + row["subcat"].ToString() + "/" + row["parcat"].ToString();

                    Response.Write("<td width=200> <br><img src='images/pdf.png' width150 height=150 /><br>");
                   // Response.Write("<td width=200> <br><img src=" + path + "/" + row["docadd"].ToString() + " width150 height=150 /><br>");
                    Response.Write("</div><div class=col-md-8>");
                    Response.Write("<table><tr><td><b><Label>File Name : </label><b></td><td>" + row["fname"].ToString() + "</td></tr>");
                    Response.Write("<tr><td><b><Label>Auther Name : </label><b></td><td>" + row["authname"].ToString() + "</td></tr>");
                    Response.Write("<tr><td><b><Label> Description : </label><b></td><td>" + row["ddesc"].ToString() + "</td></tr>");
                    Response.Write("<tr><td><b><Label style='color:red'> Price : </label><b></td><td style='color:red'>" + row["price"].ToString() + "</td></tr></table>");
                  
                        Response.Write("</div>");
                    

                }
                Response.Write("</div>");



                Response.Write("</div>");

               
            %>

           
   <div style="margin-left:20px">

     <asp:Button ID="addcoursebtn" runat="server"  Text="Add Course" OnClick="addcoursebtn_Click"/>
     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
    <asp:Button ID="downloadbtn" runat="server"  Text="Download" OnClick="downloadbtn_Click"/>
    
    </div>
    </div>
    </div>
</asp:Content>

