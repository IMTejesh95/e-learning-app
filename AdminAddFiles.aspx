<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminAddFiles.aspx.cs" Inherits="AdminAddFiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <div class="clearfix margin_bottom10"></div>


<div class="page_title3">
<div class="container">

	<h1>Add Courses Data </h1>
    <div class="pagenation">&nbsp;<a href="Default.aspx">Home</a> <i>/</i> Add Courses Data</div>

</div>
</div><!-- page title -->

<div class="clearfix"></div>
    <div class="content_fullwidth">

<div class="container">

	<div class="logregform two">
    
        <div class="title">
        
			<h3>Add Courses</h3>
        	            
        </div>
        
        <div class="feildcont">
     
            
                
               <div class="one_half first">
               <label>Select Main Course</label>
                    
                </div>

            <div class="one_half last" >

                 <asp:DropDownList ID="listmainc" runat="server"   AutoPostBack="true" OnSelectedIndexChanged="listmainc_SelectedIndexChanged1" >
                  <asp:ListItem>--Select--</asp:ListItem>                      
                 </asp:DropDownList> 
                 <br />
            </div>
            

                  <div class="one_half first" style="margin-top:25px">
                	<label>Select Sub Stream</label>
                        
                </div>

            <div class="one_half last" style="margin-top:25px">

                 <asp:DropDownList ID="listsubcourse" runat="server" AutoPostBack="true" OnSelectedIndexChanged="listsubcourse_SelectedIndexChanged1">                                  
                    <asp:ListItem>--Select--</asp:ListItem> 
                      </asp:DropDownList>
                 <br />
            </div>
            

            <div class="one_half first" style="margin-top:25px">
                	<label>Select Subject</label>
                        
                </div>

            <div class="one_half last" style="margin-top:25px">

                 <asp:DropDownList ID="listparsub" runat="server" >  <asp:ListItem>--Select--</asp:ListItem>  </asp:DropDownList>

                
                
                
            </div>
                
            <div class="one_half first" style="margin-top:25px">
                	<label>Enter File Name</label>
                        
                </div>

            <div class="one_half last" style="margin-top:25px">
                <asp:TextBox ID="tfname" runat="server"></asp:TextBox>
            </div>

             <div class="one_half first">
                	<label>Auther Name</label>
                        
                </div>
 
             <div class="one_half last" >
                <asp:TextBox ID="tauthname" runat="server"></asp:TextBox>
            </div>

             <div class="one_half first">
                	<label>Document No.</label>
                        
                </div>

            <div class="one_half last" >

                <asp:TextBox ID="tdno" runat="server"></asp:TextBox>
            </div>

             <div class="one_half first">
                	<label>Price</label>
                        
                </div>

            <div class="one_half last" >

                <asp:TextBox ID="tprice" runat="server"></asp:TextBox>
            </div>

             <div class="one_half first">
                	<label>Description</label>
                        
                </div>

            <div class="one_half last" >

                <asp:TextBox ID="tdesc" runat="server"></asp:TextBox>
            </div>
             <div>
                 <hr style="color:pink; height:5px" />
             </div>

             <div class="one_half first">
                	<label>Upload Document</label>
                        
                </div>

            <div class="one_half last" >

               <asp:FileUpload ID="docfile" runat="server" />
            </div>


              <div>
                 <hr style="color:pink; height:5px" />
             </div>

            <div style="text-align:center">
                <asp:button id="addcoursedoc" runat="server" Text="Add Course Data"   class="fbut"  Width="297px" OnClick="addcoursedoc_Click"  ></asp:button>
            </div>
        
        
        </div>

	</div>
    
</div>

    
    
    
</div>
</asp:Content>

