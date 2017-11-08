<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
	
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>



<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Pretty-Footer.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/PageDisplay.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Welcome Page</title>
</head>




<!--  
		<head>
  			<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  			<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  			
  			<title>project</title>
		
		</head>
		-->
 
	 	
	<style>	

/*****************globals*************/
body {
  font-family: 'open sans';
  overflow-x: hidden; }

img {
  max-width: 100%; }

.preview {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }
  @media screen and (max-width: 996px) {
    .preview {
      margin-bottom: 20px; } }

.preview-pic {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.preview-thumbnail.nav-tabs {
  border: none;
  margin-top: 15px; }
  .preview-thumbnail.nav-tabs li {
    width: 18%;
    margin-right: 2.5%; }
    .preview-thumbnail.nav-tabs li img {
      max-width: 100%;
      display: block; }
    .preview-thumbnail.nav-tabs li a {
      padding: 0;
      margin: 0; }
    .preview-thumbnail.nav-tabs li:last-of-type {
      margin-right: 0; }

.tab-content {
  overflow: hidden; }
  .tab-content img {
    width: 100%;
    -webkit-animation-name: opacity;
            animation-name: opacity;
    -webkit-animation-duration: .3s;
            animation-duration: .3s; }

.card {
  margin-top: 50px;
  background: #eee;
  padding: 3em;
  line-height: 1.5em; }

@media screen and (min-width: 997px) {
  .wrapper {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex; } }

.details {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }

.colors {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.product-title, .price, .sizes, .colors {
  text-transform: UPPERCASE;
  font-weight: bold; }

.checked, .price span {
  color: #ff9f1a; }

.product-title, .rating, .product-description, .price, .vote, .sizes {
  margin-bottom: 15px; }

.product-title {
  margin-top: 0; }

.size {
  margin-right: 10px; }
  .size:first-of-type {
    margin-left: 40px; }

.color {
  display: inline-block;
  vertical-align: middle;
  margin-right: 10px;
  height: 2em;
  width: 2em;
  border-radius: 2px; }
  .color:first-of-type {
    margin-left: 20px; }

.add-to-cart, .like {
  background: #ff9f1a;
  padding: 1.2em 1.5em;
  border: none;
  text-transform: UPPERCASE;
  font-weight: bold;
  color: #fff;
  -webkit-transition: background .3s ease;
          transition: background .3s ease; }
  .add-to-cart:hover, .like:hover {
    background: #b36800;
    color: #fff; }

.not-available {
  text-align: center;
  line-height: 2em; }
  .not-available:before {
    font-family: fontawesome;
    content: "\f00d";
    color: #fff; }

.orange {
  background: #ff9f1a; }

.green {
  background: #85ad00; }

.blue {
  background: #0076ad; }

.tooltip-inner {
  padding: 1.3em; }

@-webkit-keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } } 

@keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

/*# sourceMappingURL=style.css.map */    


</style>


	
	
		<body   style="background: url(https://www.planwallpaper.com/static/images/original-landscape-background-design-red-wallpaper-light-desktop-105595.jpg
		); background-size:100% ;">
	
	
	
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
	  	
	  	
	  	
	  	
	

	
	<!--  
	
	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="H:\\sowmya\ProjectPRODUCTImages\image33.jpg"/></div>
						  <div class="tab-pane" id="pic-2"><img src="H:\sowmya\ProjectPRODUCTImages\image11.jpg"/></div>
						  <div class="tab-pane" id="pic-3"><img src="H:/sowmya/ProjectPRODUCTImages/image12.jpg"/></div>
						  <div class="tab-pane" id="pic-4"><img src="H:/sowmya/ProjectPRODUCTImages/image7.jpg"/></div>
						  <div class="tab-pane" id="pic-5"><img src="H:/sowmya/ProjectPRODUCTImages/image5.jpg"/></div>
						</div>
						<ul class="preview-thumbnail nav nav-tabs">
						  <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="H:\\sowmya\ProjectPRODUCTImages\image33.jpg" /></a></li>
						  <li><a data-target="#pic-2" data-toggle="tab"><img src="H:/sowmya/ProjectPRODUCTImages/image11.jpg"/></a></li>
						  <li><a data-target="#pic-3" data-toggle="tab"><img src="H:/sowmya/ProjectPRODUCTImages/image12.jpg"/></a></li>
						  <li><a data-target="#pic-4" data-toggle="tab"><img src="H:/sowmya/ProjectPRODUCTImages/image7.jpg"/></a></li>
						  <li><a data-target="#pic-5" data-toggle="tab"><img src="H:/sowmya/ProjectPRODUCTImages/image5.jpg"/></a></li>
						</ul>
						
					</div>
					<div class="details col-md-6">
						<h3 class="product-title">Womens Clothing</h3>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							<span class="review-no">48 reviews</span>
						</div>
						<p class="product-description">Explore the wide collection of ethnic, formal, casual and western wear clothing for women and shop for the styles that best suit you. Also, shop for essentials at our lingerie and nightwear store.	</p>
						<h4 class="price">current price: <span>1899</span></h4>
						<p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
						<h5 class="sizes">sizes:
							<span class="size" data-toggle="tooltip" title="small">s</span>
							<span class="size" data-toggle="tooltip" title="medium">m</span>
							<span class="size" data-toggle="tooltip" title="large">l</span>
							<span class="size" data-toggle="tooltip" title="xtra large">xl</span>
						</h5>
						<h5 class="colors">colors:
							<span class="color orange not-available" data-toggle="tooltip" title="Not In store"></span>
							<span class="color green"></span>
							<span class="color blue"></span>
						</h5>
						<div class="action">
							<button class="add-to-cart btn btn-default" type="button">Add to cart</button>
							<button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
  </body>
   
</html>

	
-->


 
	  
	  <!--  	<nav id ="navbar-red" class="navbar-inverse"role="navigation">
			
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
	-->
			
			<%-- 	 <sec:authorize access="!isAuthenticated()">
				      <!--   <h2 class="form-signin-heading">Please sign in</h2> 
                  <li role="presentation"><a href="login">Login </a></li>
                    <li role="presentation"><a href="registration">Register </a></li> 
                     </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                
                 <i class="fa fa-sign-out" aria-hidden="true"><a href="<c:url value="j_spring_security_logout"/>">Logout</a></i>
                 
                 <i  role="presentation" class="fa fa-shopping-cart" aria-hidden="true"><a href="cart">Cart</a></i>
                  </sec:authorize> 
	--%>
				</ul>
	  		</div>
	  	</nav>
	  	
	 	
	 
<div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="2" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="3" class="active"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img class="img-responsive center-block"
      src="resources/image33.jpg" >
    </div>
    <div class="item">
    <img class="img-responsive center-block"
      src="resources/image34.jpg">
    </div>

    <div class="item">
    <img class="img-rounded" class="img-responsive center-block"
      src="resources/image35.jpg">
    </div>
 
  </div>
  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<%-- 
			<c:set var="slider1" value="Revlon"></c:set>
			<c:set var="slider2" value="tresemme"></c:set>
			<c:set var="slider3" value="colorbar"></c:set>
			<c:set var="slider4" value="vaseline"></c:set>

			<div class="col-sm-1">
			 </div>
			 <div class="col-sm-10">
			 	
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
			   <!--  Indicators -->
			    <ol class="carousel-indicators">
			      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			      <li data-target="#myCarousel" data-slide-to="1"></li>
			      <li data-target="#myCarousel" data-slide-to="2"></li>
			      <li data-target="#myCarousel" data-slide-to="3"></li>
			    </ol>
			
			   <!--  Wrapper for slides -->
			    <div class="carousel-inner" role="listbox">
			      <div class="item active">
			      <a href="${pageContext.request.contextPath}/searchProductByName/${slider1}">
			        <img src="resources/image33.jpg" alt="Image">
			       </a>
			        <div class="carousel-caption">
			          <h3></h3>
			          <p></p>
			        </div>      
			      </div>
			
			      <div class="item">
			       <a href="${pageContext.request.contextPath}/searchProductByName/${slider2}">
			        <img src="resources/imag34.jpg" alt="Image">
			        </a>
			        <div class="carousel-caption">
			          <h3></h3>
			          <p></p>
			        </div>      
			      </div>
			      
			       <div class="item">
			        <a href="${pageContext.request.contextPath}/searchProductByName/${slider3}">
			        <img src="resources/image35.jpg" alt="Image">
			        </a>
			        <div class="carousel-caption">
			          <h3></h3>
			          <p></p>
			        </div>      
			      </div>
			      
			       <div class="item">
			        <a href="${pageContext.request.contextPath}/searchProductByName/${slider4}">
			        <img src="resources/image26.jpg" alt="Image">
			        </a>
			        <div class="carousel-caption">
			          <h3></h3>
			          <p></p>
			        </div>      
			      </div>
			    </div>
	
			   <!--  Left and right controls -->
			    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			      <span class="sr-only">Previous</span>
			    </a>
			    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			      <span class="sr-only">Next</span>
			    </a>
			</div>
			</div>
			<div class="col-sm-1">
			 </div>
			 <c:set var="tab1" value="makeup eye lip"></c:set>
			  <c:set var="tab2" value="lip"></c:set>
			   <c:set var="tab3" value="hair body"></c:set>
		--%>	 
			<div class="container text-center">    
			  <h3>Everlasting memories by SheLavish</h3><br>
			  <div class="row">
			    <div class="col-sm-4">
			     <a href="${pageContext.request.contextPath}/searchProductByName/${tab1}">
			      <img src="resources/image5.jpg" class="img-responsive" style="width:100%" alt="Image">
			      </a>
			      <p>Handbags and Applicators</p>
			    </div>
			    <div class="col-sm-4"> 
			     <a href="${pageContext.request.contextPath}/searchProductByName/${tab2}">
			      <img src="resources/image9.jpg" class="img-responsive" style="width:100%" alt="Image">
			     </a>
			      <p>Diamond Jewellery</p>    
			    </div>			    
			     <div class="col-sm-4"> 
			     <a href="${pageContext.request.contextPath}/searchProductByName/${tab3}">
			      <img src="resources/image12.jpg" class="img-responsive" style="width:100%" alt="Image">
			     </a>
			      <p>Hats</p>    
			    </div>
			  </div>
			</div><br>
	
			<div class="container text-center">    
			  <h3> Amazing products</h3><br>
			  <div class="row">
			    <div class="col-sm-4">
			      <div class="well">
			      <a href="${pageContext.request.contextPath}/searchProductByBrand/CHICO'S">
			       <img src="resources/image6.jpg" class="img-responsive" style="width:100%" alt="Image">
			       </a>
			      </div>
			      <div class="well">
			      <a href="${pageContext.request.contextPath}/searchProductByBrand/L'oreal">
			       <img src="resources/image18.jpg" class="img-responsive" style="width:100%" alt="Image">
			       </a>
			      </div>
			    </div>
			     <div class="col-sm-4">
			      <div class="well">
			       <a href="${pageContext.request.contextPath}/searchProductByBrand/maybelline">
			       <img src="resources/image13.jpg" class="img-responsive" style="width:100%" alt="Image">
			       </a>
			      </div>
			      <div class="well">
			      <a href="${pageContext.request.contextPath}/searchProductByBrand/neutrogena">
			      <img src="resources/image2.jpg" class="img-responsive" style="width:100%" alt="Image">
			      </a>
			      </div>
			    </div>
			    <div class="col-sm-4">
			      <div class="well">
			      <a href="${pageContext.request.contextPath}/searchProductByBrand/thefaceshop">
			       <img src="resources/image8.jpg" class="img-responsive" style="width:100%" alt="Image">
			       </a>
			      </div>
			      <div class="well">
			      <a href="${pageContext.request.contextPath}/searchProductByBrand/nyx">
			       <img src="resources/image26.jpg" class="img-responsive" style="width:100%" alt="Image">
			       </a>
			      </div>
			    </div>
			  </div>
			</div><br>
	 
	  	
	  	
	<c:forEach items="${pList}" var="product">
   
    <div class="container">
        <div class="row product">
            <div class="col-md-5 col-md-offset-0">
            <img src="/SheLavishFront/myImage/imageDisplay?id=${product.productId}" alt="" width="300" height="200" /></div>
            <div class="col-md-7">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Specifications </th>
                                <th>Details </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td> Name</td>
                                <td>${product.productName}</td>
                            </tr>
                            <tr>
                                <td>Price </td>
                                <td>${product.price} </td>
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td>${product.productDesc} </td>
                            </tr>
                            <tr>
                                <td>Colors </td>
                                <td>Orange,Black,White </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <form:form action="addToCart/${product.productId}" method="POST">
                <button  class="btn btn-warning" type="submit">Add to cart</button>
                </form:form>
            </div>
        </div>
        
        <div class="media">
            <div class="media-body"></div>
        </div>
        <div class="media">
            <div class="media-body"></div>
        </div>
    </div>
    </c:forEach>  
	  
 
 

</body>
 

	<jsp:include page="Footer.jsp" />

</html>
