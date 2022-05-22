<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.master" AutoEventWireup="true" CodeFile="SGiveExamaspx.aspx.cs" Inherits="SGiveExamaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="clearfix margin_bottom10"></div>
<div class="page_title3">
<div class="container">

	<h1>Students Exam</h1>
    <div class="pagenation">&nbsp;<a href="Default.aspx">Home</a> <i>/</i> Online Exam</div>

</div>
</div><!-- page title -->

<div class="clearfix"></div>

     <div>
       <%-- <h3>Welcome back, <%=uname %> : Online Exam</h3>--%>
    </div>

<div class="content_fullwidth">

<div class="container">

	<div class="logregform exam">
    
        <div class="title">
        
			<h3> Online Exam</h3>
        		
		
            
        </div>
        
        <div class="feildcont">
<div>
           <table>
                
               <tr>
                   <td>
               <asp:label ID='que' runat='server' Text=""> </asp:label>
                   </td>
               </tr>
               
               <tr>
                   <td>  
               <asp:RadioButton ID='op1' runat='server' style="margin-top:15px" GroupName="g1" ></asp:RadioButton></td><td> <asp:label id="l1" runat="server"></asp:label>  

                   </td>
               </tr> 
                <tr>
                   <td>
                <asp:RadioButton ID='op2' runat='server' GroupName="g1" >  </asp:RadioButton></td><td><asp:label id="l2" runat="server"></asp:label> 
                       </td>
               </tr> 
                        <tr>
                   <td>  
                    <asp:RadioButton ID='op3' runat='server' GroupName="g1"  >  </asp:RadioButton></td><td><asp:label id="l3" runat="server"></asp:label>   
                       </td>
               </tr> 
                        <tr>
                   <td>
                        <asp:RadioButton ID='op4' runat='server'  >  </asp:RadioButton></td><td> <asp:label id="l4" runat="server"></asp:label>
                       </td>
               </tr>    
           
              </table> 
     </div>

            <asp:button ID="btnpre" class="fbut" runat="server" Text="< Previous" style="width:140px; margin-top:50px; margin-left:220px " OnClick="btnpre_Click" />

            <asp:button ID="btnnext" class="fbut" runat="server" Text="Next >" style="width:140px;  margin-top:50px; margin-left:50px" OnClick="btnnext_Click" />

            
        </div>
        
	</div>
    
</div>

   <div> 
    
    
</div>
    </div><!-- end content area -->
<!-- end content area -->
</asp:Content>

