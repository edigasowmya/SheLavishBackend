<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   		<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
   		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   		
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

		<head>
  	
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  			
  			<title></title>
		</head>
		
<style>




/*
 * Amin Bootstrap - Full Slider
 * Copyright 2017 Amin Bootstrap
 */

html,
body {
    height: 100%;
}

footer {
    margin: 50px 0;
}

ol.carousel-indicators li{
    width: 100px;
    height: 100px;
    border-color: transparent;
}

ol.carousel-indicators li.active{
    width: 100px;
    height: 100px;
    border-color: transparent;
    background-color: transparent;
}

ol.carousel-indicators li div{
    border-radius: 50%;
    background: rgba(0,0,0,0.8);
}

ol.carousel-indicators li.active div{
    border-radius: 50%;
    background: rgba(255,255,255,0.8);
}

.carousel,
.item,
.active {
    height: 100%;
}

.carousel-inner {
    height: 100%;
}

.fill {
    width: 100%;
    height: 100%;
    background-position: center;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    background-size: cover;
    -o-background-size: cover;
}

#image1 {
    background-image:url('H:\sowmya\ProjectPRODUCTImages\image2.jpg');
}

#image2 {
    background-image:url('H:\sowmya\ProjectPRODUCTImages\image3.jpg');
}

#image3 {
    background-image:url('H:\sowmya\ProjectPRODUCTImages\image4.jpg');
}

#item1 {
    background-image:url('H:\sowmya\ProjectPRODUCTImages\image2.jpg\hover-pag-2.png');
}

#item2 {
    background-image:url('H:\sowmya\ProjectPRODUCTImages\image3.jpg\hover-pag-3.png');
}

#item3 {
    background-image:url('H:\sowmya\ProjectPRODUCTImages\image4.jpg\hover-pag-4.png');
}





</style>		
		
	<script>
	
	$('.carousel').carousel({
	    interval: 3000 //changes the speed
	})
	</script>	
	
		
<body>
<nav id ="navbar-red" class="navbar navbar-inverse"role="navigation">
			
			<div class="container-fluid">
				<ul="nav navbar-nav">
					<button type="button"class="navbar-toggle collapsed datatoggle="collapse"data target="bs-example-nav">
						<span class="sr-only">toggle navigation</span>
						<span class="icon_bar"></span>
						<span class="icon_bar"></span>
						<span class="icon_bar"></span>
					</button>
				</ul>
			</div>
		
			<div class="collapse navbar-collapse"id=bs-example-nav>
			
			<ul class="nav navbar-nav navbar-right">
			
			
				 <sec:authorize access="!isAuthenticated()">
				      <!--   <h2 class="form-signin-heading">Please sign in</h2> -->
                    <li role="presentation"><a href="login">Login </a></li>
                    <li role="presentation"><a href="registration">Register </a></li>
                     </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                
                 <li><span class="fa fa-sign-out" aria-hidden="true"></span><a href="<c:url value="j_spring_security_logout"/>">Logout</a></li>
                 
                 <li><i  role="presentation" class="fa fa-shopping-cart" aria-hidden="true"></i><a href="cart">Cart</a></li>
                  </sec:authorize>
	
				</ul>
	  		</div>
	  	</nav>
	  	
	  	
	  	
</body>
</html>