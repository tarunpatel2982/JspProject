
<%@ page errorPage="Error.jsp" %>


		<%
			String no1 =request.getParameter("name1");

			String no2 =request.getParameter("name2");
			
			int a=Integer.parseInt(no1);
			int b=Integer.parseInt(no2);
			
			int c= a/b;
			out.print("division of number is : " +c);
		%>	
