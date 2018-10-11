package kr.co.sist.user.vo;

public class InquiryVO {
	private int i_number, member_number, manager_number;
	private String content, title, i_type, input_date, answer_date, answer_check;

	public InquiryVO() {
		super(); 
		// TODO Auto-generated constructor stub
	}

	public InquiryVO(int i_number, int member_number, int manager_number, String content, String title, String i_type,
			String input_date, String answer_date, String answer_check) {
		super();
		this.i_number = i_number;
		this.member_number = member_number;
		this.manager_number = manager_number;
		this.content = content;
		this.title = title;
		this.i_type = i_type;
		this.input_date = input_date;
		this.answer_date = answer_date;
		this.answer_check = answer_check;
	}

	public int getI_number() {
		return i_number;
	}

	public void setI_number(int i_number) {
		this.i_number = i_number;
	}

	public int getMember_number() {
		return member_number;
	}

	public void setMember_number(int member_number) {
		this.member_number = member_number;
	}

	public int getManager_number() {
		return manager_number;
	}

	public void setManager_number(int manager_number) {
		this.manager_number = manager_number;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getI_type() {
		return i_type;
	}

	public void setI_type(String i_type) {
		this.i_type = i_type;
	}

	public String getInput_date() {
		return input_date;
	}

	public void setInput_date(String input_date) {
		this.input_date = input_date;
	}

	public String getAnswer_date() {
		return answer_date;
	}

	public void setAnswer_date(String answer_date) {
		this.answer_date = answer_date;
	}

	public String getAnswer_check() {
		return answer_check;
	}

	public void setAnswer_check(String answer_check) {
		this.answer_check = answer_check;
	}
	
}
