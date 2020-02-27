<%@page import="com.slk.bean.UserLogin"%>
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
	<h3>Login Form</h3>
	<%
		boolean status = UserLogin.validate(userObj);
		if(status== true)
		{
			out.print("You Are sucesFully logedIn");
		%>	
			
			<jsp:forward page="UserHome.jsp"></jsp:forward>
			<%
		}else
		{
			out.print("Worg User Name And Password!!!!");
		}
	
	%>
	
	
	
</body>
</html>