<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMaster.master" AutoEventWireup="true" CodeFile="TeacherUploadExam.aspx.cs" Inherits="TeacherUploadExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div class="clearfix margin_bottom10"></div>


<div class="page_title3">
<div class="container">

	<h1>Add Test </h1>
    <div class="pagenation">&nbsp;<a href="Default.aspx">Home</a> <i>/</i> Add Test</div>

</div>
</div><!-- page title -->

<div class="clearfix"></div>
    <div class="content_fullwidth">

<div class="container">

	<div class="logregform two">
    
        <div class="title">
        
			<h3>Add Test Questions</h3>
        	            
        </div>
        
        <div class="feildcont">
     
            
                
              
            

            <div class="one_half first" style="margin-top:25px">
                	<label>Select Subject</label>
                        
                </div>

            <div class="one_half last" style="margin-top:25px">

                 <asp:DropDownList ID="listparsub" runat="server" >  <asp:ListItem>--Select--</asp:ListItem>  </asp:DropDownList>

            </div>
                
         
             <div class="one_half first"  style="margin-top:25px">
                	<label>Upload Document</label>
                        
                </div>

            <div class="one_half last"  style="margin-top:25px">

               <asp:FileUpload ID="docfile" runat="server" />
            </div>
    

              <div>
                 <hr style="color:pink; height:5px" />
             </div>



            <div style="text-align:center">
                <asp:button id="btnaddque" runat="server" Text="Add Test Questions"   class="fbut" style="margin-left:100px" Width="297px" ></asp:button>
            </div>
        
        
        </div>

         
	</div>
    
</div>

    
    
    
</div>
</asp:Content>

