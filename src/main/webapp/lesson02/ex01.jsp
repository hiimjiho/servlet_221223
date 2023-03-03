<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP</title>
</head>
<body>
	<!-- HTML의 주석 -->
	<%-- JSP의 주석: 소스보기에서 보이지 않는다 --%>
	<%
		// JAVA문법 시작
		// scriptlet
		int sum = 0;
		for(int i = 1; i <= 10; i++){
			sum += i;
		}
	%>
	
	<strong>합계:</strong>
	<%-- sum: expression 문법 --%>
	<input type="text" value="<%=sum %>">
	<br>
	
	<%!
		// 선언문 - 클래스 같은 느낌
		// 필드
		private int num = 100;
		
		// 메소드
		public String getHelloWorld() {
			return "hello world";
		}
	%>
	
	<%= getHelloWorld() %>
	<br>
	<%=num + 200 %>
</body>
</html>