

 <%-- 
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
  
 
  
<html>

	<head>
			<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  			<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
  			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 
			<title>Registration Page</title>
	</head>
	<body>
			
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

    

 

   
 </head>
    
    <%-- 
 
    <body>
    
    
    
        <h3>Welcome, Enter The User Details</h3>
          <form:form  commandName="user" method="post" action="${actionUrl }" class="form-horizontal" >
        
            <centre><table>
                <tr>
                    <td><form:label path="username">UserName</form:label></td>
                    <td><form:input path="username"/></td>
                    <td><form:errors path="username" cssClass="error"/></td> 
                </tr>
                <tr>
                    <td><form:label path="email">Email</form:label></td>
                    <td><form:input path="email"/></td>
                    <td><form:errors path="email" cssClass="error"/></td> 
                </tr>
                
                      <tr>
                    <td><form:label path="password">Password</form:label></td>
                    <td><form:input path="password"/></td>
                    <td><form:errors path="password" cssClass="error"/></td> 
                </tr>
                
              
                
                <tr>
                    <td><form:label path="contact">Contact Number</form:label></td>
                    <td><form:input path="contact"/></td>
                    <td><form:errors path="contact" cssClass="error"/></td> 
                </tr>
                
                
                 <tr>
`                    <td><form:label path="address">Address</form:label></td>
                    <td><form:input path="address"/></td>
                    <td><form:errors path="address" cssClass="error"/></td> 
                </tr>
                <tr>
                    <td><form:label path="role">Role</form:label></td>
                    <td><form:input path="role"/></td>
                </tr>
                <tr>
                    <td><form:label path="enabled">Enabled</form:label></td>
                    <td><form:input path="enabled"/></td>
                </tr>
                
                
                
                <tr>
                    <center><td><input type="submit" value="Add User"/></td></center>
                </tr>
            </table></centre>
        </form:form>
       
    </body>
     
 
   
   
</html>

--%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Index Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	.bs-example{
    	margin: 20px;
    }
</style>


</head>

	<body   style="background: url(https://wallpaperlayer.com/img/2015/6/fashion-wallpaper-2346-2511-hd-wallpapers.jpg); background-size:100% ;">

 <c:url var="actionUrl" value="saveUser" />

<form:form  commandName="user" method="post" action="${actionUrl }" class="form-horizontal" >


	<div class="form-group">
		<label for="First Name" class="col-xs-4 control-label">UserName</label>
		<div class="col-xs-4">
		
		<%-- <form:label path="username">UserName</form:label>
                    <form:input path="username"/> --%>
		    <form:input name="username" path="username" placeholder="User Last Name" class="form-control" />  
 			<form:errors path="username" cssClass="error"/>
		</div>
	</div> 
		
	
	
	<div class="form-group">
		<label for="Supplier Name" class="col-xs-4 control-label">Email</label>
		<div class="col-xs-4">
		
		         <%--  <form:label path="email">Email</form:label>
                  <form:input path="email"/> --%>
                  
                  
              
 			<form:input name="username" path="email" placeholder="User Name" class="form-control" />
 		                  <form:errors path="email" cssClass="error"/> 
 		

		</div>
	</div>

	<div class="form-group">
		<label for="code" class="col-xs-4 control-label">Password</label>
		<div class="col-xs-4">
		            <%-- <form:label path="password">Password</form:label>
                    <form:input path="password"/>
					       
	  --%>
			<form:input name="password"  path="password" placeholder="User Password" class="form-control" />
							 <form:errors path="password" cssClass="error"/>
		
			
		</div>
	</div>

	<div class="form-group">
		<label for="code" class="col-xs-4 control-label">Contact Number</label>
		<div class="col-xs-4">
		
		            <%--  <form:label path="contact">Contact Number</form:label>
                    <form:input path="contact"/>
                    <form:errors path="contact" cssClass="error"/> --%>
		
			<form:input name="contact"  path="contact" placeholder="contact" class="form-control" />
			<form:errors path="contact" cssClass="error"/>
			 
			
		</div>
	</div>

	<div class="form-group">
	<label for="code" class="col-xs-4 control-label"></label>
		
		<div class="col-xs-4">
			
		<input type="submit" value="Add User" id="btn-add" class="btn btn-primary" >
	
	</div>
	</div>
</form:form>
</body>
</html>






