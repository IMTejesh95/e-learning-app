<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!doctype html>


<!--[if IE 7 ]>    <html lang="en-gb" class="isie ie7 oldie no-js"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en-gb" class="isie ie8 oldie no-js"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en-gb" class="isie ie9 no-js"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en-gb" class="no-js"> <!--<![endif]-->


<!-- Mirrored from gsrthemes.com/aloom/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Aug 2015 17:26:11 GMT -->
<head>
	<title>E-Learning</title>
	
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="keywords" content="" />
	<meta name="description" content="" />
    <link rel="shortcut icon" type="image/png" href="images/favicon.png"/>
    
    <!-- Favicon --> 
	<link rel="shortcut icon" href="images/logo.jpg">
    
    <!-- this styles only adds some repairs on idevices  -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- ######### CSS STYLES ######### -->
	
    <link rel="stylesheet" href="css/reset.css" type="text/css" />
	<link rel="stylesheet" href="css/style.css" type="text/css" />
    
    <!-- font awesome icons -->
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
	
    <!-- simple line icons -->
	<link rel="stylesheet" type="text/css" href="css/simpleline-icons/simple-line-icons.css" media="screen" />
    
    <!-- et linefont icons -->
    <link rel="stylesheet" href="css/et-linefont/etlinefont.css">
    
    <!-- animations -->
    <link href="js/animations/css/animations.min.css" rel="stylesheet" type="text/css" media="all" />
    
    <!-- responsive devices styles -->
	<link rel="stylesheet" media="screen" href="css/responsive-leyouts.css" type="text/css" />
    
    <!-- shortcodes -->
    <link rel="stylesheet" media="screen" href="css/shortcodes.css" type="text/css" /> 

<!-- just remove the below comments witch color skin you want to use -->
    <!--<link rel="stylesheet" href="css/colors/blue.css" />-->
    <!--<link rel="stylesheet" href="css/colors/green.css" />-->
    <!--<link rel="stylesheet" href="css/colors/cyan.css" />-->
    <!--<link rel="stylesheet" href="css/colors/orange.css" />-->
    <!--<link rel="stylesheet" href="css/colors/lightblue.css" />-->
    <!--<link rel="stylesheet" href="css/colors/pink.css" />-->
    <!--<link rel="stylesheet" href="css/colors/purple.css" />-->
    <!--<link rel="stylesheet" href="css/colors/bridge.css" />-->
    <!--<link rel="stylesheet" href="css/colors/slate.css" />-->
    <!--<link rel="stylesheet" href="css/colors/yellow.css" />-->
    <!--<link rel="stylesheet" href="css/colors/darkred.css" />-->

<!-- just remove the below comments witch bg patterns you want to use --> 
    <!--<link rel="stylesheet" href="css/bg-patterns/pattern-default.css" />-->
    <!--<link rel="stylesheet" href="css/bg-patterns/pattern-one.css" />-->
  <link rel="stylesheet" href="css/bg-patterns/pattern-two.css" />
    <!--<link rel="stylesheet" href="css/bg-patterns/pattern-three.css" />-->
    <!--<link rel="stylesheet" href="css/bg-patterns/pattern-four.css" />-->
    <!--<link rel="stylesheet" href="css/bg-patterns/pattern-five.css" />-->
    <!--<link rel="stylesheet" href="css/bg-patterns/pattern-six.css" />-->
    <!--<link rel="stylesheet" href="css/bg-patterns/pattern-seven.css" />-->
    <!--<link rel="stylesheet" href="css/bg-patterns/pattern-eight.css" />-->
    <!--<link rel="stylesheet" href="css/bg-patterns/pattern-nine.css" />-->
    <!--<link rel="stylesheet" href="css/bg-patterns/pattern-ten.css" />-->
    <!--<link rel="stylesheet" href="css/bg-patterns/pattern-eleven.css" />-->
    <!--<link rel="stylesheet" href="css/bg-patterns/pattern-twelve.css" />-->
    <!--<link rel="stylesheet" href="css/bg-patterns/pattern-thirteen.css" />-->

    <!-- style switcher -->
    <link rel = "stylesheet" media = "screen" href = "js/style-switcher/color-switcher.css" />
    
    <!-- mega menu -->
    <link href="js/mainmenu/bootstrap.min.css" rel="stylesheet">
	<link href="js/mainmenu/demo.css" rel="stylesheet">
	<link href="js/mainmenu/menu.css" rel="stylesheet">
	
    <!-- icon hover -->
    <link rel="stylesheet" href="js/iconhoverefs/component.css" />
    
	<!-- owl carousel -->
    <link href="js/carouselowl/owl.transitions.css" rel="stylesheet">
    <link href="js/carouselowl/owl.carousel.css" rel="stylesheet">
        
    <!-- accordion -->
    <link rel="stylesheet" type="text/css" href="js/accordion/style.css" />
    
    
</head>

<body>

<div class="site_wrapper">

<header class="header">
 
	<div class="container_full">
    
    <!-- Logo -->
  <h1  style="text-align:center">Welcome to E-Learning</h1>
		
	
    
	</div>
    
</header>


<div class="clearfix margin_bottom10"></div>


<div class="page_title3">
<div class="container">

	<h1>Registration</h1>
    <div class="pagenation">&nbsp;<a href="Default.aspx">Home</a> <i>/</i> Registration</div>

</div>
</div><!-- page title -->

<div class="clearfix"></div>


<div class="content_fullwidth">

<div class="container">

	<div class="logregform two">
    
        <div class="title">
        
			<h3>REGISTRATION</h3>
        		
			<p>Already Registered? &nbsp;<a href="Login.aspx">Log In.</a></p>
            
        </div>
        
        <div class="feildcont">
        <form id="frm" runat="server">
            
                 <asp:Label ID="luname" runat="server" Text="Username"></asp:Label> 
               <asp:TextBox ID="tuname" runat="server" ></asp:TextBox>
                
                <label>Email <em>*</em></label>
               <asp:TextBox ID="temail" runat="server"></asp:TextBox>
                
                <div class="one_half">
                    <label>Password <em>*</em></label>
                    <asp:TextBox ID="tpass" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                
                <div class="one_half last">
                    <label>Confirm Password <em>*</em></label>
                    <asp:TextBox ID="trepass" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                
             
                <div class="clearfix"></div>
                <div class="margin_bottom2"></div>
                
                <div class="one_half">
                    <label>City</label>
                    <asp:TextBox ID="tcity" runat="server"></asp:TextBox>
                </div>
                
                <div class="one_half last">
                	<label>Country</label>
                    <asp:DropDownList ID="lcountry" runat="server">
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
                
            <asp:DropDownList ID="ttype" runat="server">
                <asp:ListItem Value=""> Select User Type</asp:ListItem>
                <asp:ListItem>Teacher</asp:ListItem>
                <asp:ListItem>Student</asp:ListItem>
            </asp:DropDownList>

                <label>Address</label>
               <asp:TextBox ID="tadd" runat="server"></asp:TextBox>
                
               <%-- <div class="checkbox">
                    <label>
                        <input type="checkbox">
                    </label>
                    <label>I agree the User Agreement and<a href="#">Terms &amp; Condition.</a></label>
                </div>--%>
                <asp:Label ID="lbl" runat="server"></asp:Label>
                <asp:button ID="tsignup" class="fbut" runat="server" Text="Create Account" OnClick="tsignup_Click"></asp:button>

        </form>
        
        </div>

	</div>
    
</div>

    
    
    
</div><!-- end content area -->
<!-- end content area -->


<div class="clearfix"></div>


<div class="footer sty2">
<div class="container">
    
		<div class="one_third_big animate" data-anim-type="fadeInUp" data-anim-delay="300">
        	<h5 class="white">Location</h5>
            PRMIT&R, Badnera,
           Maharashtra, <br />
            WA 98122-1090<br />
            <a href="#">How to find us</a>
        </div>
                
        <div class="one_third_big alicent animate" data-anim-type="fadeInUp" data-anim-delay="500">
        	<h5 class="white">Keep In Touch</h5>
            <p class="clearfix margin_bottom1"></p>
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-google-plus"></i></a>
                <a href="#"><i class="fa fa-linkedin"></i></a>
                <a href="#"><i class="fa fa-rss"></i></a>
            <br /><br />
            <p class="smtfont">© E-learning 2017 | All rights reserved.</p>
            
        </div>
        
        <div class="one_third_big last aliright animate" data-anim-type="fadeInUp" data-anim-delay="400">
        	<h5 class="white">Get Help Quickly</h5>
            Call Us: <strong>1-234-456-7890</strong><br />
            Mail Us: <a href="#"><strong>info@domain.com</strong></a>
        </div>
        


</div>
</div><!-- end footer -->



<div class="clearfix"></div>





</div>

    
<!-- ######### JS FILES ######### -->
<!-- get jQuery used for the template -->
<script type="text/javascript" src="js/universal/jquery.js"></script>
<script src="js/style-switcher/styleselector.js"></script>
<script src="js/animations/js/animations.min.js" type="text/javascript"></script>
<script src="js/mainmenu/bootstrap.min.js"></script> 
<script src="js/mainmenu/customeUI.js"></script> 
<script src="js/masterslider/masterslider.min.js"></script>
<script src="js/masterslider/jquery.easing.min.js"></script>
<script type="text/javascript" src="js/accordion/jquery.accordion.js"></script>
<script type="text/javascript" src="js/accordion/custom.js"></script>
<script type="text/javascript" src="js/cform/form-validate.js"></script>
<script src="js/aninum/jquery.animateNumber.min.js"></script>
<script src="js/scrolltotop/totop.js" type="text/javascript"></script>
<script type="text/javascript" src="js/mainmenu/sticky.js"></script>
<script type="text/javascript" src="js/mainmenu/modernizr.custom.75180.js"></script>
<script src="js/tabs/assets/js/responsive-tabs.min.js" type="text/javascript"></script>
<script src="js/carouselowl/owl.carousel.js"></script>
<script src="js/progressbar/progress.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="js/universal/custom.js"></script>

</body>

<!-- Mirrored from gsrthemes.com/aloom/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Aug 2015 17:26:11 GMT -->
</html>
