<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>get Method</title>
</head>
<body>
	<b>아이디</b>
	<%= request.getParameter("user_id") %>
	<br>
	<b>이름</b>
	<%=request.getParameter("name") %>
	<br>
	<b>나이</b>
	<%=request.getParameter("age") %>
</body>
</html>