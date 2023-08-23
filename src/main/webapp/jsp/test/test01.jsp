<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.Arrays" %>
<%@ page import= "java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test01</title>
</head>
<body>

	<h2>1. </h2>
	<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	for (int i = 0; i < scores.length; i++) {
		sum += scores[i];
	}
	
	double average = sum / (double)scores.length;
	%>
	
	<h3>평균 점수는 <%= average %> 입니다.</h3>
	
	
	
	
	<h2>2. </h2>
	
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int score = 0;
/* 	for (int i = 0; i < scoreList.size(); i++) {
		if (scoreList.get(i).equals("O")) {
			score += 10;
		}
	} */

	for (String answer:scoreList) {
		if (answer.equals("O")) {
			score += 10;
		}
	}
	%>
	
	<h3>채점 결과는 <%= score %>입니다.</h3>
	
	
	
	
	<h2>3.</h2>
<%-- <%!
	public int getSum(int n) {
		int sum = 0;
		for (int i = 1; i <= n; i++) {
			sum += i;
		}
		return sum;
	}
%> --%>
	
	<%!
		public int calculateSum(int number) {
		int sum = 0;
			for (int i = 1; i <=  number; i++) {
				sum += i;
			}
			return sum;
	}
	%>
	
	<h3>1부터 50까지의 합은 <%= calculateSum(50)%>입니다.</h3>
	
	
	
	
	
	<h2>4. </h2>
	
	<%
	String birthDay = "20010820";
/* 	String year = birthDay.substring(0, 4); */
/* 	out.print(year); */
/* 	int age = 2023 - Integer.parseInt(year) + 1; */

/* 	String yearString = birthDay.substring(0,4);
	int year = Integer.parseInt(yearString); */
	
	int year = Integer.parseInt(birthDay.substring(0,4));
	
	int age = 2023 - year + 1;
	
	%>
	
	<h3><%= birthDay %>생의 나이는 <%= age %>세 입니다.</h3>
</body>
</html>