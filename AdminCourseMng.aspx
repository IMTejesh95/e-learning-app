<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminCourseMng.aspx.cs" Inherits="AdminCourseMng" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="clearfix margin_bottom10"></div>


<div class="page_title3">
<div class="container">

	<h1>Courses Management</h1>
    <div class="pagenation">&nbsp;<a href="Default.aspx">Home</a> <i>/</i> Admin Courses Management</div>

</div>
</div><!-- page title -->

<div class="clearfix"></div>
    <div class="content_fullwidth">

<div class="container">

	<div class="logregform two">
    
        <div class="title">
        
			<h3>Manage Courses</h3>
        	            
        </div>
        
        <div class="feildcont">
     
            
                
               <div class="one_half first">
               <label>Enter Main Course</label>
                    
                </div>

            <div class="one_half last" >

                 <asp:TextBox ID="tmainc" runat="server"></asp:TextBox> 
            </div>
            

                  <div class="one_half first">
                	<label>Enter Sub Stream</label>
                        
                </div>

            <div class="one_half last" >

                 <asp:TextBox ID="tsubstream" runat="server"></asp:TextBox>
            </div>
            

            <div class="one_half first">
                	<label>Particular Subject</label>
                        
                </div>

            <div class="one_half last" >

                 <asp:TextBox ID="tparsub" runat="server"></asp:TextBox>
            </div>
                
            <div style="text-align:center">
                <asp:button id="mngcoursebtn" runat="server" Text="Add New Course"   class="fbut"  Width="297px" OnClick="mngcoursebtn_Click1"  ></asp:button>
            </div>
        
        
        </div>

	</div>
    
</div>

    
    
    
</div><!-- end content area -->
<!-- end content area -->

</asp:Content>

