package kr.co.sist.user.vo;

public class User_infoVO {
	String name,current_pass,pw_question,pw_answer,phone1
	,phone2,phone3,email,zipcode,addr,addr_detail;
	
	public User_infoVO() {
		// TODO Auto-generated constructor stub
	}
	
	
	public User_infoVO(String name, String current_pass, String pw_question, String pw_answer, String phone1,
			String phone2, String phone3, String email, String zipcode, String addr, String addr_detail) {
		this.name = name;
		this.current_pass = current_pass;
		this.pw_question = pw_question;
		this.pw_answer = pw_answer;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.phone3 = phone3;
		this.email = email;
		this.zipcode = zipcode;
		this.addr = addr;
		this.addr_detail = addr_detail;
	}




	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCurrent_pass() {
		return current_pass;
	}

	public void setCurrent_pass(String current_pass) {
		this.current_pass = current_pass;
	}

	public String getPw_question() {
		return pw_question;
	}

	public void setPw_question(String pw_question) {
		this.pw_question = pw_question;
	}

	public String getPw_answer() {
		return pw_answer;
	}

	public void setPw_answer(String pw_answer) {
		this.pw_answer = pw_answer;
	}

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getPhone3() {
		return phone3;
	}

	public void setPhone3(String phone3) {
		this.phone3 = phone3;
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

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getAddr_detail() {
		return addr_detail;
	}

	public void setAddr_detail(String addr_detail) {
		this.addr_detail = addr_detail;
	}
	
	@Override
	public String toString() {
		return "UserInfoVO [name=" + name + ", current_pass=" + current_pass + ", pw_question=" + pw_question
				+ ", pw_answer=" + pw_answer + ", phone1=" + phone1 + ", phone2=" + phone2 + ", phone3=" + phone3
				+ ", email=" + email + ", zipcode=" + zipcode + ", addr=" + addr + ", addr_detail=" + addr_detail + "]";
	}


	
}
