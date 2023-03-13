package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.com.MysqlService;

@WebServlet("/lesson04/Quiz01")
public class Quiz01 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		// Mysql 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// insert DB
		String insertQuery = "insert into `real_estate`(`realtorId`,`address`,`area`,`type`,`price`)"
				+ "values(3, '헤라펠리스 101동 5305호', 350, '매매', 150000);";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// select DB
		PrintWriter out = response.getWriter();
		String selectQuery = "select `address`, `area`, `type` * from `real_estate` order by `id` desc limit 10";
		try {
			ResultSet res = ms.select(selectQuery);
			while (res.next()) {
				out.print("매물 주소:" + res.getString("address") + ", 면적:" + res.getInt("area") + ", 타입:" + res.getShort("type"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//Mysql 연결 해제
		ms.disconnect();
	}
}
