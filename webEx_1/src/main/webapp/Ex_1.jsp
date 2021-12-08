<%-- jsp 주석 태그 --%>
<!-- 지시자 태그 (브라우저에게 문자의 정보를 전달) -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	Hello world
	<%
	// JSP : Java Server Page
	//  ㄴ html 문서 안에 java 문장(코드)을 작성하는 것
	
	// 1) 지시자 태그 <%@ >
	// 2) 주석 태그 <%-- --% >
	// 3) 스크립틀릿 <% % >
	// 스크립틀릿(scriptlet) 태그 안에 자바 문장을 작성할 수 있다.
	// 4) 표현식 <%= % >
	// int num = 2;
	// System.out.println(num);
	%>
	
	<%
		for(int i = 1; i < 10; i += 1){
			for(int j = 1; j < 10; j += 1){
				int num = i*j;
				%><p><%=i %> * <%=j %> = <%=num %></p><%
			}
		}
	%>
	
</body>
</html>