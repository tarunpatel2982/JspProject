package com.slk.bean;

import java.io.Serializable;
import java.util.Date;

public class UserBean implements Runnable {

	private String userName, userPassword;
	private java.util.Date userBirthDate;
	private String userMobileNo;

	public UserBean() {

	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public Date getUserBirthDate() {
		return userBirthDate;
	}

	public void setUserBirthDate(Date userBirthDate) {
		this.userBirthDate = userBirthDate;
	}

	public String getUserMobileNo() {
		return userMobileNo;
	}

	public void setUserMobileNo(String userMobileNo) {
		this.userMobileNo = userMobileNo;
	}

	public static void main(String[] args) {
//		new Thread() {
//			@Override
//			public void run() {
//				System.out.println("HIIIII");
//			}
//		}.start();
//
//		new Thread(new Runnable() {
//
//			@Override
//			public void run() {
//				// TODO Auto-generated method stub
//
//			}
//		}).start();

		UserBean a = new UserBean();

//	 = new Thread(a);
//		thread.start();

		for (int i = 0; i < 5; i++) {
			Thread thread=new Thread(a);
			thread.start();

		}
	}

	@Override
	public void run() {
		System.out.println("Hiiiiiiiiiiiiiiiiii");

	}

}
