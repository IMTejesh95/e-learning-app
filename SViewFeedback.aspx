<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.master" AutoEventWireup="true" CodeFile="SViewFeedback.aspx.cs" Inherits="SViewFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="clearfix margin_bottom10"></div>


<div class="page_title3">
<div class="container">

	<h1>Students Feedback</h1>
    <div class="pagenation">&nbsp;<a href="Default.aspx">Home</a> <i>/</i> Messaging</div>

</div>
</div><!-- page title -->

<div class="clearfix"></div>

     <div>
        <h3>Welcome back, <%=uname %> : Feedback</h3>
    </div>

<div class="content_fullwidth">

<div class="container">

	<div class="logregform inbox">
    
        <div class="title">
        
			<h3> Feedback</h3>
        		
		</div>
            <table style="width:60%">
                <thead>
								<tr>
									
									
									<th class="pad-10"  style="width:150px">Feedback</th>
									<th class="pad-10">Date</th>
									<th class="pad-10">Time</th>
									<th class="pad-10"></th>
								</tr>
							</thead>
                
                 <%   
               
                
             for (i = 0; i < tab.Rows.Count; i++)
             {
                 row = tab.Rows[i];
                 Response.Write("<tr>");
                 Response.Write("<td class='pad-10' style='width:100px'><a href=DisplaySFeedback.aspx?fid=" + Int32.Parse(row["fid"].ToString()) + ">" + row["Feedback"].ToString() + "</a></td><td>" + row["date"].ToString() + "</td><td class='pad-10'>" + row["time"].ToString() + "</td><td class='pad-10'><a href=DeleteSMessage.aspx?fid=" + Int32.Parse(row["fid"].ToString()) + ">Delete</td>");
                    
                   // Response.Write("<div class='span5'><a href='Cart.aspx?" + row["modelno"].ToString() + "'><asp:Button ID='cartbtn'  class='btn btn-inverse' style='margin-top:-10px' >Add to cart</a></div>");

                Response.Write("</tr>");    
             }
               
         %>
				
            </table>
		</div>
            
        </div>
        
        <div class="feildcont">

           

       
        </div>

	</div>
    
</div>

    
    
    
</div><!-- end content area -->
<!-- end content area -->


<div class="clearfix"></div>
</asp:Content>



