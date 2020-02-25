<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	
		<!-- Scriptlet Tag  -->
		<%
			String name =request.getParameter("uname");
			out.print("Wellcome " + name);
			out.println();
		%>
		
		
		<!--Expression Tag   -->
		
		<%="\n Wellocme "+ request.getParameter("uname")	%>
	</body>
</html>