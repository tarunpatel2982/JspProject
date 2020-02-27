package com.slk.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserRegister {

	
	public static int register(UserBean u)
	{

		 int status =0;

		 	
		 	try {
		 		Connection con = DBConnectionProvider.getCon();
		 		Statement  st = con.createStatement();
				
				
		 		ResultSet rs=null;
				
			
				
				rs = st.executeQuery("select * from user");
				String mobno = null;
				Boolean check=false;
				while(rs.next())
				{
					 mobno =rs.getString("UserMobileNo");
					 System.out.println("test : " + mobno);
		 		
					 String val= u.getUserMobileNo();
					 System.out.println("test val : " + val);
					 if(val==null)
					 {
						 
						 check= true;
						 break;
						
					 }
					 else
					 {
						 check = u.getUserMobileNo().equals(mobno);
						 System.out.println("this is not null value ");
					 }
					 System.out.println("test check : " + check);
					 System.out.println("execute"+ u.getUserMobileNo() + " test "  ); 
					if( check == true  )
					{
						check=true;
						System.out.println("inner check : " + check);
						break;
	
					}
					
					
				}
				System.out.println("outer test check : " + check);
				if(check == false)
				{
					PreparedStatement ps =con.prepareStatement("insert into user(UserName,UserPassword,UserMobileNo) values (?,?,?)");
					
					ps.setString(1,u.getUserName());
					ps.setString(2, u.getUserPassword());

					ps.setString(3, u.getUserMobileNo());
					
					status=ps.executeUpdate();
				}
				
				
						
		 	
		 	} catch (SQLException e) {
				// TODO Auto-generated catch block
			
			}
			return status;
	}
}
