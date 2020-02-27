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
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<!--  <link rel="stylesheet" href="com.css">-->
	</head>
	<body>
			<jsp:useBean id="userObj" class="com.slk.bean.UserBean"></jsp:useBean>
			<jsp:setProperty property="*" name="userObj"/>
			
			
			<h1>Get User Detail</h1>
			
			<%
				int status = UserRegister.register(userObj);
				//boolean st = UserLogin.validate(userObj);
				out.print(status);
				if(status>0)
				{
					out.print("<script>alert('You are Registerd');</script>");
					
					
					%>	
					
					<jsp:forward page="UserHome.jsp"></jsp:forward>
					<%
				}
				else
				{
					
					out.print("<script>alert('User Already Exists !!! or Enter Perfect MObile no ');</script>");
					request.getRequestDispatcher("user.jsp").include(request, response);
					
				}
			
				
				Connection con = DBConnectionProvider.getCon();
				
				Statement st = con.createStatement();
				
				ResultSet rs =null;
				
				String sql ="select * from user";
				
				rs = st.executeQuery(sql);
				while(rs.next())
				{
					if(request.getParameter("userMobileNo").equals(rs.getString("UserMobileNo")))
					{
					
						
					
				
			%><table>
				<tr >
				
				<td><%=rs.getString("UserName") %>
				</td></tr>
				
				</table>
			<%
					}
				}
			%>
	</body>
</html>