package com.slk.bean;

import java.io.Serializable;
import java.util.Date;


public class UserBean  implements Serializable{
	
	
	private String userName,userPass;
	private java.util.Date userBirthDate;
	private int userMobileNo;
	
	public UserBean()
	{
		
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public Date getUserBirthDate() {
		return userBirthDate;
	}
	public void setUserBirthDate(Date userBirthDate) {
		this.userBirthDate = userBirthDate;
	}
	public int getUserMobileNo() {
		return userMobileNo;
	}
	public void setUserMobileNo(int userMobileNo) {
		this.userMobileNo = userMobileNo;
	}

}
