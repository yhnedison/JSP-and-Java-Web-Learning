package com.alexyu;

public class UserBean {
	private String username;
	private String userpass;
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getUserpass( ) {
		return userpass;
	}
	
	public void setUserpass(String userpass) {
		this.userpass = userpass;
	}
	
	public int check( ) {
		if (username.equals("aaaaaa") && userpass.equals("123123")) {
			return 1;
		} else if (username.equals("bbbbbb") && userpass.equals("123123")){
			return 0;
		} else {
			return -1;
		}
	}
	
	public int getResult() {
		return check();
	}
}