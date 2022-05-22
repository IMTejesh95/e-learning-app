<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMaster.master" AutoEventWireup="true" CodeFile="TProfile.aspx.cs" Inherits="TProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="clearfix margin_bottom10"></div>


<div class="page_title3">
<div class="container">

	<h1>Teachers Profile</h1>
    <div class="pagenation">&nbsp;<a href="Default.aspx">Home</a> <i>/</i> Profile</div>

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
        
			<h3>Users Profile</h3>
        		
		
            
        </div>
        
        <div class="feildcont">

            
                 <asp:Label ID="luname" runat="server" Text="Username" ></asp:Label> 
               <asp:TextBox ID="tuname" runat="server" ReadOnly="true" ></asp:TextBox>
                
                               
                <div class="one_half">
                    <label>Fname </label>
                    <asp:TextBox ID="tfname" runat="server" Enabled="false" ></asp:TextBox>
                </div>
                
                <div class="one_half last">
                    <label>Last Name </label>
                    <asp:TextBox ID="tlname" runat="server" Enabled="false"  ></asp:TextBox>
                </div>
                
                <label>Email <em>*</em></label>
               <asp:TextBox ID="temail" runat="server" ReadOnly="true"></asp:TextBox>

                 <label>Phone <em>*</em></label>
               <asp:TextBox ID="tphone" runat="server" Enabled="false" ></asp:TextBox>

                <label>Address</label>
               <asp:TextBox ID="taddress" runat="server" Enabled="false" ></asp:TextBox>

                <div class="clearfix"></div>
                <div class="margin_bottom2"></div>
                
                <div class="one_half">
                    <label>City</label>
                    <asp:TextBox ID="tcity" runat="server" Enabled="false" ></asp:TextBox>
                </div>
                
                <div class="one_half last">
                	<label>Country</label>
                    <asp:DropDownList ID="lcountry" runat="server" Enabled="false" >
                    <asp:ListItem value="">- Select -</asp:ListItem>
                           <asp:ListItem>INDIA</asp:ListItem>
                           <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>Chaina</asp:ListItem>
                    <asp:ListItem>Australia</asp:ListItem>
                    <asp:ListItem>Germany</asp:ListItem>
                    <asp:ListItem>Canada</asp:ListItem>
                    <asp:ListItem>UK</asp:ListItem>

                      </asp:DropDownList>     
                </div>
                
             <div class="one_half">
                    <label>Gender </label>
                    <asp:TextBox ID="tgender" runat="server" Enabled="false" ></asp:TextBox>
                </div>
                
                <div class="one_half last">
                    <label>Age </label>
                    <asp:TextBox ID="tage" runat="server" Enabled="false"></asp:TextBox>
                </div>
                
             <div class="one_half">
                    <label>Qualification </label>
                    <asp:TextBox ID="tqual" runat="server" Enabled="false"></asp:TextBox>
                </div>
                
                <div class="one_half last">
                    <label>Occupation </label>
                    <asp:TextBox ID="tocc" runat="server" Enabled="false" ></asp:TextBox>
                </div>

             <div class="one_half ">
                	<label>Belongs to</label>
                   <asp:DropDownList ID="listmainc" runat="server" Enabled="false"   AutoPostBack="true" OnSelectedIndexChanged="listmainc_SelectedIndexChanged1" >
                  <asp:ListItem>--Select--</asp:ListItem>                      
                 </asp:DropDownList>     
                </div>
                
                <div class="one_half last">
                	<label>Sub Stream</label>
                 
                 <asp:DropDownList ID="listsubcourse" runat="server" Enabled="false"  AutoPostBack="true" >                                  
                    <asp:ListItem>--Select--</asp:ListItem> 
                      </asp:DropDownList>
                 <br />    
                </div>
               <%-- <div class="checkbox">
                    <label>
                        <input type="checkbox">
                    </label>
                    <label>I agree the User Agreement and<a href="#">Terms &amp; Condition.</a></label>
                </div>--%>
                <asp:Label ID="lbl" runat="server"></asp:Label>
                <asp:button ID="btnupdate" class="fbut" runat="server" Text="Update profile" OnClick="btnupdate_Click" ></asp:button>
            <asp:button ID="btnsubmit" class="fbut" runat="server" Text="Submit profile" OnClick="btnsubmit_Click" ></asp:button>

        </form>
        
        </div>

	</div>
    
</div>

    
    
    
</div><!-- end content area -->
<!-- end content area -->


<div class="clearfix"></div>
</asp:Content>

