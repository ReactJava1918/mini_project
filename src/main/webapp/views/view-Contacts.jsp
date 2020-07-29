<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="//cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
<script src="//cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"/>
<script>
$(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>
 </head>
<body>
	<br>
	<br>
	<div class="container">
		<center>
			<h4 style="text-decoration: underline;">All Contacts</h4>
		</center>
		<c:if test="${not empty succMag}">
			<div class="alert alert-success">
				<strong>${succMag}</strong>
			</div>
		</c:if>
		<h3 class="bg-dark">
			<a href="/register">+ Add New Contact</a>
		</h3>
		<table id='myTable'>
			<thead >
				<tr>
					<th>S.NO</th>
					<th>NAME</th>
					<th>EMAIL</th>
					<th>PHNO</th>
					<th>ACTION</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="contact" items="${contactlist}">
					<tr>
						<td>${contact.contactId}</td>
						<td>${contact.contactName}</td>
						<td>${contact.contactEmail}</td>
						<td>${contact.contactNumber}</td>
						<td width="50px">
							<h3>
								<a href="/edit/${contact.contactId}">edit</a> <a
									href="/delete/${contact.contactId}"  onclick="return confirm('Are you sure you want to continue')">delete</a>
							</h3>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>