<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%!
			int cube(int n)
			{
				return n*n*n;
			}
		%>
		
		<%="cube of 3 is :" +  cube(3) %>
	</body>
</html>