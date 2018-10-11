package kr.co.sist.user.vo;


public class SignUpVO {
	String id,pass,name,pw_hint,pw_answer,phone,zip,addr,addr_detail,email,gender;

	public SignUpVO() {	}
	public SignUpVO(String id, String pass, String name, String pw_hint, String pw_answer, String phone, String zip,
			String addr, String addr_detail, String email, String gender) {
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.pw_hint = pw_hint;
		this.pw_answer = pw_answer;
		this.phone = phone;
		this.zip = zip;
		this.addr = addr;
		this.addr_detail = addr_detail;
		this.email = email;
		this.gender = gender;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


	public String getPw_hint() {
		return pw_hint;
	}

	public void setPw_hint(String pw_hint) {
		this.pw_hint = pw_hint;
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

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "SignUpVO [id=" + id + ", pass=" + pass + ", name=" + name + ", pw_hint=" + pw_hint + ", pw_answer="
				+ pw_answer + ", phone=" + phone + ", zip=" + zip + ", addr=" + addr + ", addr_detail=" + addr_detail
				+ ", email=" + email + ", gender=" + gender + "]";
	}
}
