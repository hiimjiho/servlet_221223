<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>quiz01</title>
</head>
<body>
	<%!
		// 1. �հ�
		// input:n
		// output: sum ���
		public int getSum(int n) {
			int sum = 0;
			for(int i = 1; i <= n; i++){
				sum += i;
			}
			return sum;
		}
	%>
	<h1>1���� 50������ ���� <%=getSum(50) %>�Դϴ�.</h1>
	
	<%
		// 2
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0;
		for(int i = 0; i < scores.length; i++){
			sum += scores[i];
		}
		double average = (double)sum / scores.length;
	%>
	<h1>��������� <%=average%>�Դϴ�</h1>
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		for(int i = 0; i < scoreList.size(); i++){
			if(scoreList.get(i).equals("O")){
				score += 100 / scoreList.size();
			}
		}
	%>
	<h1>ä�� ����� <%=score%>���Դϴ�</h1>
	
	<%
		String birthDay = "20010820";
		String yearStr = birthDay.substring(0, 4);
		//out.print(yearStr);
		int age = 2023 - Integer.parseInt(yearStr);
	%>
	<h1><%=birthDay %>�� ���̴� <%=age %>���Դϴ�</h1>
</body>
</html>