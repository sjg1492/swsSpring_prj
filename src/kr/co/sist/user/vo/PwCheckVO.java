package kr.co.sist.user.vo;

public class PwCheckVO {
	String id,pw_hint,pw_answer;
	public PwCheckVO() {
		// TODO Auto-generated constructor stub
	}
	public PwCheckVO(String id, String pw_hint, String pw_answer) {
		super();
		this.id = id;
		this.pw_hint = pw_hint;
		this.pw_answer = pw_answer;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	@Override
	public String toString() {
		return "PwCheckVO [id=" + id + ", pw_hint=" + pw_hint + ", pw_answer=" + pw_answer + "]";
	}
	
	
}
