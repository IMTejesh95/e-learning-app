<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMaster.master" AutoEventWireup="true" CodeFile="TMessage.aspx.cs" Inherits="TMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="clearfix margin_bottom10"></div>


<div class="page_title3">
<div class="container">

	<h1>Teachers Mesages</h1>
    <div class="pagenation">&nbsp;<a href="Default.aspx">Home</a> <i>/</i> Messaging</div>

</div>
</div><!-- page title -->

<div class="clearfix"></div>

     <div>
        <h3>Welcome back, <%=uname %> : Messaging</h3>
    </div>

<div class="content_fullwidth">

<div class="container">

	<div class="logregform two">
    
        <div class="title">
        
			<h3> Messaging</h3>
        		
		
            
        </div>
        
        <div class="feildcont">

             
            <div>
                 <label>Too </label>
              <asp:DropDownList ID="listeachers" runat="server"  > </asp:DropDownList></div> <br /><br />
                
            <div><label> Subject</label>
            <asp:TextBox ID="tsubject" runat="server"></asp:TextBox></div> <br /><br />
                               
               <div>  <label>Message </label>
               <asp:TextBox ID="tmess" runat="server" height="150" Width="490" placeholder="Enter Your Message ...."></asp:TextBox>

                <asp:Label ID="lbl" runat="server"></asp:Label></div>
               
            <asp:button ID="btnsmessage" class="fbut" runat="server" Text="Send Message" OnClick="btnsmessage_Click"  ></asp:button>

       
        </div>

	</div>
    
</div>

    
    
    
</div><!-- end content area -->
<!-- end content area -->


<div class="clearfix"></div>
</asp:Content>

