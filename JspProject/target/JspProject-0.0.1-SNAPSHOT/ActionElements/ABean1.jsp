<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
			<h1>My First Bean</h1>
			
			<jsp:useBean id="obj" class="com.slk.bean.MyBean"></jsp:useBean>	
			
			<jsp:setProperty property="*" name="obj" />
			
			<div>
				<h3>Student Detail</h3>
			</div>
			<jsp:getProperty property="studId" name="obj"/>
			<jsp:getProperty property="studName" name="obj"/>
			<jsp:getProperty property="studAge" name="obj"/>
</html>