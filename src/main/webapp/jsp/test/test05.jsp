<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST Method 2</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

	<%
		int cm = Integer.parseInt(request.getParameter("length"));
	
		String[] types = request.getParameterValues("type");
	%>
	<div class="container">
		<h1>변환 결과</h1>
		<%= cm %>
		<span>cm</span>
		<hr>
		<%
			for (int i = 0; i < types.length; i++) {
				if (types[i].equals("inch")) {
					double inch = cm * 0.39;
					out.println(inch + " in <br>" );
				} else if (types[i].equals("yard ")) {
					double yard = cm * 0.01;
					out.println(yard + " yd <br>");
				} else if (types[i].equals("feet")) {
					double feet = cm * 0.03;
					out.println(feet + " ft <br>");
				} else if (types[i].equals("meter")) {
					double meter = cm * 0.01;
					out.println(meter + " m <br>");
				} else {
					out.println("단위 선택을 완료해주세요!");
				}
			}
		%>
	</div>


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>