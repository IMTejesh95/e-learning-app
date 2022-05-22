<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="DiaplayAFeedback.aspx.cs" Inherits="DiaplayAFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="clearfix margin_bottom10"></div>


<div class="page_title3">
<div class="container">

	<h1>Students Diaplay Inbox</h1>
    <div class="pagenation">&nbsp;<a href="Default.aspx">Home</a> <i>/</i> Messaging</div>

</div>
</div><!-- page title -->

<div class="clearfix"></div>

     <div>
        <h3>Welcome back, <%=uname %> : Inbox</h3>
    </div>

<div class="content_fullwidth">

<div class="container">

	<div class="logregform inbox">
    
        <div class="title">
        
		<h3> Message Details</h3>
        		
		</div>
            <p>From    : <b> <%=fromm %>  </b></p>
                 <br />
                     Date    : <b> <%=date %> </b></p>
               <br />
                     Time    : <b> <%=time %></b></p>
                  <br />
                   
            
       
        
        <div class="feildcont">

           
             <asp:button ID="replybtn" class="fbut" runat="server" Text="Reply" style="width:140px; margin-top:50px; margin-left:20px " OnClick="replybtn_Click" />

            <asp:button ID="backbtn" class="fbut" runat="server" Text="Back" style="width:140px;  margin-top:50px; margin-left:250px" OnClick="backbtn_Click" />

       
        </div>

	</div>
    
</div>

    
    
    
</div><!-- end content area -->
<!-- end content area -->


<div class="clearfix"></div>
</asp:Content>




