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
				String name = request.getParameter("uname");
				out.print("wellcome  : " + name);
				
				
				session.setAttribute("uname", name);
				
				
			%>	
			
			<a href="ISession2.jsp">second page</a>
	</body>
</html>