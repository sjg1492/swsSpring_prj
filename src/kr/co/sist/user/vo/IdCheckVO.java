package kr.co.sist.user.vo;

public class IdCheckVO {
	String name,email;
	public IdCheckVO() {
		// TODO Auto-generated constructor stub
	}
	public IdCheckVO(String name, String email) {
		super();
		this.name = name;
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "IdCheckVO [name=" + name + ", email=" + email + "]";
	}
	
	
}
