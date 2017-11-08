<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Site for all your beauty needs - YourStyle.Com</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/css/Pretty-Footer.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">   
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  -->
 
</head>
<style>

#footer-sub{
    background-color: #f3f7f8;
    border-top: 1px solid #dbdbdb;
}

#footer-main{
    background-color: #012b72;
}

#footer-sub h5{
    color:#565656;
    margin-top: 25px;
}

#footer-sub ul{
    list-style: none;
    margin-top: 20px;
}

#footer-sub hr{
    margin: 5px;

}

#footer-sub ul li{
margin-left: -38px;
}

#footer-sub a:link {
    text-decoration: none;
    color:#565656;
    font-size: 12px;
}

#footer-sub a:visited {
    text-decoration: none;
    color:#565656;
}


#footer-sub a:hover {
    text-decoration: none;
    color: blue;
}


#footer-sub a:active {
    text-decoration: none;
    color:#565656;
}

.vertical-line{
    border-right: 1px solid #dbdbdb;
    margin: 8px;
    padding: 0px;
}

.glyphicon {
    font-size: 35px;
     color:#6d6c6c;
}

#sub-two{
    margin: 0px;
    padding: 0px;
}

#sub-two .vertical-line h4{
    color:#6d6c6c;
}


#footer-main ul{
    list-style: none;
}

#footer-main ul li{
    float:left;
    text-decoration: none;
    padding-left: 15px;
    margin-top: 17px;
}

#footer-main a:link {
    color:white;
    font-size: 12px;
}

#footer-main a:visited {
    color:white;
}


#footer-main a:hover {
    text-decoration: none;
    color: #00b9f5;
}


#footer-main a:active {
    color:white;
}

.glyphicon-search{
    font-size: 20px;
}

#social-menu{
    float: right;
   margin-right: 60px;
}

#side-padding{
    padding: 0px;
    margin: 0px;
}

</style>

<body>

<footer>





<div style="min-height: 250px;" class="footer" id="footer-sub">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h5> HELP </h5>
            <ul>
                <li><a href="">Payments</a><hr></li>
                <li><a href="">Saved Cards</a><hr></li>
                <li><a href="">Shipping</a><hr ></li>
                <li><a href="">Cancellation & Returns</a><hr></li>
                <li><a href="">FAQ</a></li>               
            </ul>
            </div>

             <div class="col-md-4">
                <h5> COMPANY NAME </h5>
            <ul>
                <li><a href="">Contact Us</a><hr></li>
                <li><a href="">About Us</a><hr></li>
                <li><a href="">Careers</a><hr></li>
                <li><a href="">Press</a><hr></li>
                <li><a href="">Sell on our website</a></li>               
            </ul>
        </div>

         <div class="col-md-4">
            <h5> MISC </h5>
            <ul>
                <li><a href="">Online Shopping</a><hr></li>
                <li><a href="">Affliate Program</a><hr></li>
                <li><a href="">Gift Card</a><hr></li>
                <li><a href="">Subscription</a><hr></li>
                <li><a href="">Sitemap</a></li>               
            </ul>
        </div>
       
        </div>

        
 <hr style="margin-bottom:0px; margin-top:30px; padding:0px;">
        <div class="row" id="sub-two">

            <div class="col-md-4">
                <div class="vertical-line text-center">
                    <span class="glyphicon glyphicon-map-marker"></span>
                    <h4>TRACK YOUR ORDER</h4>
                </div>
            </div>

            <div class="col-md-4">
                <div class="vertical-line text-center">
                    <span class="glyphicon glyphicon-refresh"></span>
                    <h4>FREE & EASY RETURNS</h4>
                </div>
            </div>

            <div class="col-md-4">
                <div style="margin:8px;" class="text-center">
                    <span class="glyphicon glyphicon-remove-circle"></span>
                    <h4 style="color:#6d6c6c;">ONLINE CANCELLATIONS</h4>
                </div>
            </div>
            

        </div>
        <hr style="margin-bottom:30px; margin-top:0px; padding:0px;">

       

    </div>
</div>
<div style="min-height: 50px;" id="footer-main">

<ul>
    <li><a href=""><b>About Us</b></a></li>
    <li><a href=""><b>Partner with us</b></a></li>
    <li><a href=""><b>Terms & Conditions</b></a></li>
    <li><a href=""><b>Blog</b></a></li>
    <li><a href=""><b>Customer Service</b></a></li>
</ul>

<div id="social-menu">
    <ul>
    <li><a href=""><img style="max-width:18px; margin-top: -7px;" src=""></a></li>
    <li><a href=""><img style="max-width:18px; margin-top: -7px;" src=""></a></li>
    <li><a href=""><img style="max-width:18px; margin-top: -7px;" src=""></a></li>
</ul>
</div>

</div>
</footer>






<!--  
		<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-6 footer-navigation">
			    <h3><a href="#"><span> </span></a></h3>
			    <p class="links"><a href="#">Home</a><strong> · </strong><a href="#">Terms and Conditions</a><strong> · </strong><a href="#">Privacy Policy</a><strong> · </strong><a href="#">About</a><strong> · </strong><a href="#">FAQ</a><strong> · </strong><a href="#">ContactUs</a></p>
			    <p class="company-name"></p>
			</div>
			<div class="col-md-4 col-sm-6 footer-contacts">
			    <div><span class="fa fa-map-marker footer-contacts-icon"> </span>
			        <p><span class="new-line-span"></span></p>
			    </div>
			    <div><i class="fa fa-phone footer-contacts-icon"></i>
			        <p class="footer-center-info email text-left"> </p>
			    </div>
			    <div><i class="fa fa-envelope footer-contacts-icon"></i>
			        <p> <a href="#" target="_blank"></a></p>
			    </div>
			</div>
			<div class="clearfix visible-sm-block"></div>
			<div class="col-md-4 footer-about">
			    <h4>About the company</h4>
			    <p> 
			    </p>
			    <div class="social-links social-icons">
			    <a href="https://www.facebook.com/YourStyle-565160520541773/">
			    <i class="fa fa-facebook"></i></a><a href="https://twitter.com/">
			    <i class="fa fa-twitter"></i></a><a href="https://www.linkedin.com/">
			    <i class="fa fa-linkedin"></i></a><a href="https://github.com/">
			    <i class="fa fa-github"></i></a></div>
			</div>			
		</div>
		</div>
		
	-->	
		

</body>
</html>
