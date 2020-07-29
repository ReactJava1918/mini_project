<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
 <!--  <style type="text/css">
  .form-group{
  width: 300px !important
  }
  </style> -->
</head>
<body>

<div class="container ">
<br>
<br>
<c:if test="${not empty succMag}">
<div class="alert alert-success">
  <strong>${succMag}</strong> 
</div>
</c:if>
<c:if test="${not empty errMag}">
   <div class="alert alert-danger">
  <strong>${errMag}</strong> 
</div>
</c:if>

<div class="form-group">
<h3 class="text-dark">Contact Info</h3>
	<form:form action="/register"  method="post" modelAttribute="contact" >
	<div  >
    <label for="name">Name:</label>
    <form:input type="text" path="contactName"  required="true"  />
  </div>
  <div  >
  <label for="name">Email:</label>
  <form:input type="email"  path="contactEmail"  required="true"  />
    </div>
    <div  >
  <label for="name">Phone:</label>
  <form:input path="contactNumber" type="text"   />
    </div>
		        <input type="reset" value="reset"  name="reset">
				<input type="submit" value="Register"   name="submit">

				<h4><a href="viewcontacts"  >View All Contacts</a></h4>
		
		<%-- <form:input path="contactId" type="hidden" /> --%>
	</form:form>
</div>
<img src="d.png"/>
</body>
</html>