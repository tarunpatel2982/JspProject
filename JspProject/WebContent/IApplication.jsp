<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			out.print("Wellcome :"+ request.getParameter("uname"));
		
			String driver = application.getInitParameter("dname");
			
			out.print("\n Driver Name Is :" + driver );
		
		%>
	</body>
</html>