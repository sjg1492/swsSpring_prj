package kr.co.sist.user.domain;

public class UserInfo {
	String name,password,question_num,answer,phone,email,zipcode,address;
	//pw_question(¹ÝÈ¯°ª ex-> 1,2,3,4) 
	public UserInfo() {
		// TODO Auto-generated constructor stub
	}
	public UserInfo(String name, String password, String question_num, String answer, String phone, String email,
			String zipcode, String address) {
		super();
		this.name = name;
		this.password = password;
		this.question_num = question_num;
		this.answer = answer;
		this.phone = phone;
		this.email = email;
		this.zipcode = zipcode;
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getQuestion_num() {
		return question_num;
	}
	public void setQuestion_num(String question_num) {
		this.question_num = question_num;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "UserInfo [name=" + name + ", password=" + password + ", question_num=" + question_num + ", answer="
				+ answer + ", phone=" + phone + ", email=" + email + ", zipcode=" + zipcode + ", address=" + address
				+ "]";
	}
	
}
