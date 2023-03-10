<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 로고 영역 -->
<div>
	<h3>
		<a href="/lesson03/quiz02/list_layout.jsp" class="text-success">Melong</a>
	</h3>
</div>

<!-- 검색 영역 -->
<form method="get" action="/lesson03/quiz02/info_layout.jsp">
	<div class="search col-9 d-flex ml-5">	
		<input type="text" class="col-12 form-control" name="search"> <input
			type="submit" class="btn btn-info" value="검색">
	</div>
</form>