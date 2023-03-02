package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03  extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/json");
		response.setCharacterEncoding("utf-8");
		
		// 임시로 작업한 내용
		
		// 쿼리스트링에 들어있는 파라미터 꺼내기
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		
		// age가 없으면 null이다.
		int age = Integer.parseInt(request.getParameter("age"));
		
		// 클론 후 주석추가
		
		PrintWriter out = response.getWriter();
//		out.println("응답");
//		out.println("user_id:" + userId);
//		out.println("name:" + name);
//		out.println("age:" + age);
		out.print("{\"user_id\":\"" + userId + "\", "
				+ "\"name\":\"" + name + "\", "
				+ "\"age\":" + age + "}");
		
	}
	// get: 브라우저, a 클릭, from태그, body가 없다.
	// "{"키":"값","키1":"값2"}" => JSON String
	
}
