<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환 결과</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%
		// 클론 후 주석 추가
		int cm = Integer.parseInt(request.getParameter("cm"));
		String[] typeArr = request.getParameterValues("type");		// checkbox처럼 여러 파라미터가 넘어올 때 getParameterValues
		
		double result = 0;
		
		for(int i = 0; i < typeArr.length; i++){
			if(typeArr[i] == "inch"){
				result = cm / 2.54;
			}if(typeArr[i] == "yard"){
				
			}
		}
	%>
	
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%=cm %>cm</h3>
		<hr>
	</div>
</body>
</html>