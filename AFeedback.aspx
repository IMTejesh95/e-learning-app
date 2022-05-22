<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AFeedback.aspx.cs" Inherits="AFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="clearfix margin_bottom10"></div>


<div class="page_title3">
<div class="container">

	<h1>Teachers Feedback</h1>
    <div class="pagenation">&nbsp;<a href="Default.aspx">Home</a> <i>/</i> Feedback</div>

</div>
</div><!-- page title -->

<div class="clearfix"></div>

     <div>
        <h3>Welcome back, Admin : Feedback</h3>
    </div>

<div class="content_fullwidth">

<div class="container">

	<div class="logregform two">
    
        <div class="title">
        
			<h3>Teachers FeedBack</h3>
        		
		
            
        </div>
        
        <div class="feildcont">

             

                 <label>Too </label>
               <asp:DropDownList ID="listusers" runat="server"  > 
                   <asp:ListItem>--Select--</asp:ListItem>
                   <asp:ListItem>Student</asp:ListItem>
                      <asp:ListItem>Teacher</asp:ListItem>
                      <asp:ListItem>For_all</asp:ListItem>
               </asp:DropDownList>
                
                               
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

