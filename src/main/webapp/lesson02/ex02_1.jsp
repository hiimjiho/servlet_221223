<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>get Method</title>
</head>
<body>
	<b>���̵�</b>
	<%= request.getParameter("user_id") %>
	<br>
	<b>�̸�</b>
	<%=request.getParameter("name") %>
	<br>
	<b>����</b>
	<%=request.getParameter("age") %>
</body>
</html>