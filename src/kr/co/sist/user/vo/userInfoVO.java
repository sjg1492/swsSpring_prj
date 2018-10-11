package kr.co.sist.user.vo;

public class userInfoVO {
String id,pass;

	public userInfoVO(String id, String pass) {
		super();
		this.id = id;
		this.pass = pass;
	}
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getPass() {
		return pass;
	}
	
	public void setPass(String pass) {
		this.pass = pass;
	}

}
