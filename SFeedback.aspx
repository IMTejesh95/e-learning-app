﻿<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.master" AutoEventWireup="true" CodeFile="SFeedback.aspx.cs" Inherits="SFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="clearfix margin_bottom10"></div>


<div class="page_title3">
<div class="container">

	<h1>Students Feedback</h1>
    <div class="pagenation">&nbsp;<a href="Default.aspx">Home</a> <i>/</i> Feedback</div>

</div>
</div><!-- page title -->

<div class="clearfix"></div>

     <div>
        <h3>Welcome back, <%=uname %> : Profile</h3>
    </div>

<div class="content_fullwidth">

<div class="container">

	<div class="logregform two">
    
        <div class="title">
        
			<h3>Users FeedBack</h3>
        		
		
            
        </div>
        
        <div class="feildcont">

             

                 <label>Username </label>
               <asp:TextBox ID="tuname" runat="server" ReadOnly="true" ></asp:TextBox>
                
                               
                 <label>Comments </label>
               <asp:TextBox ID="tcomment" runat="server" height="150" Width="490" placeholder="Enter Your Feedback...."></asp:TextBox>

                <asp:Label ID="lbl" runat="server"></asp:Label>
               
            <asp:button ID="btnfeedback" class="fbut" runat="server" Text="Submit Feedback"  OnClick="btnfeedback_Click" ></asp:button>

       
        </div>

	</div>
    
</div>

    
    
    
</div><!-- end content area -->
<!-- end content area -->


<div class="clearfix"></div>

</asp:Content>

