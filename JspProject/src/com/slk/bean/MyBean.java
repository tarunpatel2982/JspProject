package com.slk.bean;

import java.io.Serializable;

public class MyBean  implements Serializable{

	
	private int studId,studAge;
	private String studName;
	
	public MyBean()
	{
		
	}
	public int getStudId() {
		return studId;
	}
	public void setStudId(int studId) {
		this.studId = studId;
	}
	public int getStudAge() {
		return studAge;
	}
	public void setStudAge(int studAge) {
		this.studAge = studAge;
	}
	public String getStudName() {
		return studName;
	}
	public void setStudName(String studName) {
		this.studName = studName;
	}
	
	
	
	
	
}
