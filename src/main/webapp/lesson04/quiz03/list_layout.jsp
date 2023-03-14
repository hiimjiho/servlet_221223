<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.com.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<style>
header{height:150px;}
.contents{height:600px;}
footer{height:50px;}
.menu{font-size:25px;}
.goods.hover{background-color:yellow;}
</style>
</head>
<body>
<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select * from `user` order by `id` desc";
	ResultSet res = ms.select(selectQuery);
%>

	<div id="wrap" class="container bg-dark">
		<header class="bg-danger d-flex justify-content-center align-items-center">
			<h1 class="title">Hong당무 마켓</h1>
		</header>
		<nav class="bg-danger d-flex">
			<ul class="nav nav-fill w-100 font-weight-bold">
				<li class="nav-item menu mr-5">리스트</li>
				<li class="nav-item menu mr-5">물건 올리기</li>
				<li class="nav-item menu mr-5">마이 페이지</li>
			</ul>
		</nav>
		<section class="contents bg-info d-flex">
			<%
				//while(res.next()){
			%>
			<div class="goods col-4 border-danger">
				<%=res.getString("title") %>
				<%=res.getInt("price") %>
				<%=res %>
			</div>
			<%
				//}
			%>
		</section>
		<footer class="bg-secondary d-flex align-items-center justify-content-center">
			Copyright © marondal 2021
		</footer>
		
		<%
			ms.disconnect();
		%>
	</div>
</body>
</html>