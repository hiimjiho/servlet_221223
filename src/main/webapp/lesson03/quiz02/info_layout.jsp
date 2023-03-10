<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멜론</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<style>
header{height:80px;}
nav{height:50px;}
footer{height:50px;}
.content1{height:220px;}
.content2{min-height:500px;}
.search{width:500px;}
.music-info-text{font-size:12px;}
</style>
</head>
<body>
	<div id="wrap" class="container">
	<form method="post" action="/lesson03/quiz02/template.jsp">
		<header class="d-flex justify-content-left align-items-center">
			<jsp:include page ="header.jsp" />
		</header>
		</form>
		<nav class="d-flex mt-3">
			<jsp:include page="menu.jsp" />
		</nav>
		<section class="contents">
			<jsp:include page="info_content.jsp" />
		</section>
		<footer class="d-flex align-items-top">
			<jsp:include page="footer.jsp" />
		</footer>
	</div>
</body>
</html>