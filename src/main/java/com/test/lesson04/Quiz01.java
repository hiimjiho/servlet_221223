package com.test.lesson04;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.com.MysqlService;

@WebServlet("/lesson04/Quiz01")
public class Quiz01 extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/plain");
		MysqlService ms = MysqlService.getInstance();
		
		ms.connect();
	}
}
