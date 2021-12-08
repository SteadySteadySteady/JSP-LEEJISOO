<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	aa
	<%
	// url 쿼리 구간에 파라미터명1=값1&파라미터명2= 값2... (요청과 함께 전달된 값이 받아짐)
	// get : http://localhost:8081/webEx_1/loginPro.jsp?id=dsa&pw=dsa
	// post : 전달되어지는 파라미터 값을 숨겨서 전달
	// http://localhost:8081/webEx_1/loginPro.jsp
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	%>
	<h1>id : <%=id %></h1>
	<h1>pw : <%=pw %></h1>
	<%
	%>
</body>
</html>