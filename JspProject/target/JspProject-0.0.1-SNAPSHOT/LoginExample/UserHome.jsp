<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
			<jsp:useBean id="userObj" class="com.slk.bean.UserBean"></jsp:useBean>
			<jsp:setProperty property="*" name="userObj"/>
			
			
			<h1>Get User Detail</h1>
			
			<jsp:getProperty property="userName" name="userObj"/>	
			
			<jsp:getProperty property="userBirthDate" name="userObj"/>	
			
			<jsp:getProperty property="userPass" name="userObj"/>
			
			<jsp:getProperty property="userMobileNo" name="userObj"/>		
	</body>
</html>