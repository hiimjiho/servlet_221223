<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP</title>
</head>
<body>
	<!-- HTML�� �ּ� -->
	<%-- JSP�� �ּ�: �ҽ����⿡�� ������ �ʴ´� --%>
	<%
		// JAVA���� ����
		// scriptlet
		int sum = 0;
		for(int i = 1; i <= 10; i++){
			sum += i;
		}
	%>
	
	<strong>�հ�:</strong>
	<%-- sum: expression ���� --%>
	<input type="text" value="<%=sum %>">
	<br>
	
	<%!
		// ���� - Ŭ���� ���� ����
		// �ʵ�
		private int num = 100;
		
		// �޼ҵ�
		public String getHelloWorld() {
			return "hello world";
		}
	%>
	
	<%= getHelloWorld() %>
	<br>
	<%=num + 200 %>
</body>
</html>