<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>this is index Page</h2>
		
		<jsp:forward page="AFtag2.jsp">
		
		
			<jsp:param name="uname" value="Tarun Patel" />
		
		</jsp:forward>	
	</body>
</html>