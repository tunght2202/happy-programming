<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : resertpassword
    Created on : May 30, 2023, 2:41:44 AM
    Author     : 84339
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Reset Password</title>
	
	<!-- Bootstrap CSS -->
	<link rel="stylesheet"
		  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
		  integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
		  crossorigin="anonymous">
	
	<style>
		body {
			padding-top: 50px;
		}
		.form-group label {
			font-weight: bold;
		}
	</style>
	
</head>
<body>

	<div class="container">
		
		<h2>Reset Password</h2>
		
		<form method="post" action="resetPassword">
			
                        <div class="form-group">
				<label for="username">Username</label>
				<input type="username" class="form-control" id="username" name="usename" required>
			</div>
                        
			<div class="form-group">
				<label for="email">Email address</label>
				<input type="email" class="form-control" id="email" name="email" required>
			</div>
			
			<button type="submit" class="btn btn-primary">Reset Password</button>   
                                 <p class="big fw-bold mt-2 pt-2 mb-2 text-center" > <a href="index.jsp" class="link-danger">Home</a></p>
		</form>
		
	</div>
	
	<!-- Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	        crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.0/dist/esm/popper-lite"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	        crossorigin="anonymous"></script>
	
</body>
</html>