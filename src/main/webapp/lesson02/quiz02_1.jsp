<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>quiz02_1</title>
</head>
<body>
	<%
		String type = request.getParameter("type");
		Date now = new Date();
		SimpleDateFormat sdf = null;
		
		if(type.equals("time")){
			sdf = new SimpleDateFormat("���� �ð��� HH�� mm�� ss�� �Դϴ�.");
			String result = sdf.format(now);
		}else if(type.equals("date")){
			sdf = new SimpleDateFormat("������ ��¥�� yyyy�� MM�� dd�� �Դϴ�.");
		}
		
		String result = sdf.format(now);
	%>
	<div class="container">
		<span class="display-4"><%=result %></span>
	</div>
</body>
</html>