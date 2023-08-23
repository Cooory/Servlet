package com.cooory.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cooory.servlet.common.MysqlService;

@WebServlet("/db/test02/insert")
public class Test02InsertController extends HttpServlet {

	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 사이트 이름과 사이트 주소를 전달 받고, 해당 값을 database에 저장한다.
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance(); 
		mysqlService.connect();
		
		String query = "INSERT INTO `bookmark`\n"
				+ "(`name`, `url`)\n"
				+ "VALUE\n"
				+  "('" + name + "', '" + url + "');";
		
		int count = mysqlService.update(query);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/database/test02-list.jsp");
	}
}
