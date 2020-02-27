package com.slk.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserLogin {

	
	public static boolean validate(UserBean u)
	{
		boolean status =false;
		Connection con = DBConnectionProvider.getCon();
		
		try {
			String sql="select * from user where UserMobileNo=? and UserPassword=?";
			PreparedStatement preparedStatement = con.prepareStatement(sql);
		
			preparedStatement.setString(1, u.getUserMobileNo());
			preparedStatement.setString(2, u.getUserPassword());
			ResultSet rs=preparedStatement.executeQuery();
			
			status=rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return status;
	}
}
