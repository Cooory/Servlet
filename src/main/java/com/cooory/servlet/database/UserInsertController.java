package com.cooory.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cooory.servlet.common.MysqlService;

@WebServlet("/db/user/insert")
public class UserInsertController extends HttpServlet {

	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//		response.setContentType("text/plain");
//		
//		PrintWriter out = response.getWriter();
		
		// 요청해서 전달한, 이름, 생년월일, 이메일 정보로 한행을 Insert 한다.
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		String email = request.getParameter("email");
		
		MysqlService mysqlService = MysqlService.getInstance(); 
		mysqlService.connect();
		
		String query = "INSERT INTO `new_user`\n"
				+ "(`name`, `yyyymmdd`, `email`)\n"
				+ "VALUE\n"
				+ "('" + name + "', '" + birthday + "', '" + email + "');";
		
		int count = mysqlService.update(query);
		
//		out.println("실행결과 : " + count);		
		
		mysqlService.disconnect();
		
		// response로 페이지 이동
		// redirect
		response.sendRedirect("/database/user-list.jsp");
	}
}
