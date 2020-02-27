<%@page import="com.slk.bean.UserLogin"%>
<%@page import="com.slk.bean.DBConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.slk.bean.UserRegister" %>
<!DOCTYPE html>
<html>
	<% String userFullName=null;%>
		<%
				
				Connection con = DBConnectionProvider.getCon();
				
				Statement st = con.createStatement();
				
				ResultSet rs =null;
				
				String sql ="select * from user";
				
				rs = st.executeQuery(sql);
				while(rs.next())
				{
					if(request.getParameter("userMobileNo").equals(rs.getString("UserMobileNo")))
					{
					
						
						 userFullName=rs.getString("UserName");
				
			
					}
				}
			%>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		  <link rel="stylesheet" href="com.css">
		  
		  <h1 class="text1">Wellcome User</h1>	
		<div class="topnav">
		
		<a style="float: right;"><%= userFullName %></a>
		 
		 <a href="profile.jsp">Profile</a>
		</div>
	</head>
	<body>
			<jsp:useBean id="userObj" class="com.slk.bean.UserBean"></jsp:useBean>
			<jsp:setProperty property="*" name="userObj"/>
			
			
			<h1 style="color: white;margin-left: 42%;margin-top: 18%;"><%= userFullName %></h1>
			
			
	</body>
</html>