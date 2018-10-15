package kr.co.sist.user.vo;

public class ChangeInfoVO {
	String id,name,current_pass,pw_question,pw_answer,phone,email,zipcode,addr;
	public ChangeInfoVO() {
	}
	public ChangeInfoVO(String id, String name, String current_pass, String pw_question, String pw_answer, String phone,
			String email, String zipcode, String addr) {
		super();
		this.id = id;
		this.name = name;
		this.current_pass = current_pass;
		this.pw_question = pw_question;
		this.pw_answer = pw_answer;
		this.phone = phone;
		this.email = email;
		this.zipcode = zipcode;
		this.addr = addr;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	@Override
	public String toString() {
		return "ChangeInfoVO [id=" + id + ", name=" + name + ", current_pass=" + current_pass + ", pw_question="
				+ pw_question + ", pw_answer=" + pw_answer + ", phone=" + phone + ", email=" + email + ", zipcode="
				+ zipcode + ", addr=" + addr + "]";
	}
	
}
