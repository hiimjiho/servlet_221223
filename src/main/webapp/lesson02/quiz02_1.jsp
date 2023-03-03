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
			sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
			String result = sdf.format(now);
		}else if(type.equals("date")){
			sdf = new SimpleDateFormat("오늘의 날짜는 yyyy년 MM월 dd일 입니다.");
		}
		
		String result = sdf.format(now);
	%>
	<div class="container">
		<span class="display-4"><%=result %></span>
	</div>
</body>
</html>