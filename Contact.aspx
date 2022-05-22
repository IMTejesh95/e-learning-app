<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="clearfix margin_bottom10"></div>


<div class="page_title2 sty8">
<div class="container">

	<h1>Contact Us</h1>
    <span class="line"></span>
    <h5>Therefore discovered the new era of learning source that makes it flexible for Anyone Anytime Anywhere Always.</h5>

</div>
</div><!-- page title -->

<div class="clearfix"></div>


<div class="content_fullwidth">

<div class="container">
	
    <div class="one_half">
      
        <p>We are happy to provide education always and anytime. Fill free to contact us on follows</p>
        <br />
        <p>Please be patient while waiting for response. Fill out all required Field to send a Message. Please don't spam,Thank you!</strong></p>
        <br /><br />
        
        <div class="cforms_sty3">
        
        
        <div id="form_status"></div>
    	<form type="POST" id="gsr-contact" onSubmit="return valid_datas( this );">
	        <label class="label">Name <em>*</em></label>
	        <label class="input">
	            <input type="text" name="name" id="name">
	        </label>
	        
	        <div class="clearfix"></div>
	        
	        <label class="label">E-mail <em>*</em></label>
	        <label class="input">
	            <input type="email" name="email" id="email">
	        </label>
	
	        <!-- <div class="clearfix"></div>
	
	
	        <label class="label">Phone <em>*</em></label>
	        <label class="input">
	            <input type="text" name="phone" id="phone">
	        </label> -->
	
	        <div class="clearfix"></div>
	
	        <label class="label">Subject <em>*</em></label>
	        <label class="input">
	            <input type="text" name="subject" id="subject">
	        </label>
	
	        <div class="clearfix"></div>
	
	        <label class="label">Message <em>*</em></label>
	        <label class="textarea">
	            <textarea rows="5" name="message" id="message"></textarea>
	        </label>
	
	        <div class="clearfix"></div>
			<input type="hidden" name="token" value="FsWga4&@f6aw" />
	        <button type="submit" class="button">Send Message</button>
	        
    	</form>	
        
        
        </div>
        
      </div>
      
      <div class="one_half last">
      
        <div class="address_info">
        
          <h4>Company <strong>Address</strong></h4>
          <ul>
            <li> <strong>Company Name</strong><br />
              PRMIT&R, Badnera, Maharashtra, India<br />
              Telephone: +264578<br />
            
              E-mail: <a href="mailto:mail@companyname.com">mail@mitra.ac.in<br />
              Website: <a href="#">www.mitra.ac.in</a> </li>
          </ul>
        </div>
        </div>
        <div class="clearfix"></div>
</asp:Content>

