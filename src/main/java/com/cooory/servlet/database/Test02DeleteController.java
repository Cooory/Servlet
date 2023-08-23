package com.cooory.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cooory.servlet.common.MysqlService;
@WebServlet("/db/test02/delete")
public class Test02DeleteController extends HttpServlet {

	@Override
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 전달 받은 id에 대응하는 행을 삭제하는 기능
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		String query = "DELETE FROM `bookmark`\n"
				+ "WHERE `id` = " + id + ";";
		
		int count = mysqlService.update(query);
		
		response.sendRedirect("/database/test02-list.jsp");
	}
}
