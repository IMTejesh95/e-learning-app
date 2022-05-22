<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminUsrMgt.aspx.cs" Inherits="AdminUsrMgt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="clearfix margin_bottom10"></div>


<div class="page_title3">
<div class="container">

	<h1>User Management</h1>
    <div class="pagenation">&nbsp;<a href="Default.aspx">Home</a> <i>/</i> Admin User Management</div>

</div>
</div><!-- page title -->

<div class="clearfix"></div>
    <div class="content_fullwidth">

<div class="container">

	<div class="logregform two">
    
        <div class="title">
        
			<h3>Manage Users</h3>
        	            
        </div>
        
        <div class="feildcont">
     
            
                
               <div class="one_half first">
               <label>Activate Users</label>
                    <asp:DropDownList ID="listactive" runat="server"  > </asp:DropDownList>     
                </div>

            <div class="one_half last" >

                 <asp:button   id="btnactivate" runat="server" Text="Activate" class="fbut" OnClick="btnactivate_Click1"  ></asp:button>
            </div>
            <div >
                <asp:Label ID="lblact" runat="server" ></asp:Label>
            </div>

                  <div class="one_half first">
                	<label>De-activate Users</label>
                    <asp:DropDownList ID="listdeactive" runat="server"  ></asp:DropDownList>     
                </div>

            <div class="one_half last" >

                 <asp:button  id="btndeactive" runat="server" Text="De-activate"  class="fbut" OnClick="btndeactive_Click1"  ></asp:button>
            </div>
            <div >
                <asp:Label ID="lbldact" runat="server" ></asp:Label>
            </div>


            <div class="one_half first">
                	<label>Delete Users</label>
                    <asp:DropDownList ID="listdelete" runat="server" > </asp:DropDownList>     
                </div>

            <div class="one_half last" >

                 <asp:button id="btndelete" runat="server" Text="Delete User"   class="fbut" OnClick="btndelete_Click1"  ></asp:button>
            </div>
                <div >
                 <asp:Label ID="lbldelete" runat="server" ></asp:Label>
            </div>
        
        
        </div>

	</div>
    
</div>

    
    
    
</div><!-- end content area -->
<!-- end content area -->


</asp:Content>

