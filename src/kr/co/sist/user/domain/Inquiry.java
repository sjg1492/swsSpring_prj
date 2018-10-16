package kr.co.sist.user.domain;

public class Inquiry {
	private String title, i_number, input_date, content, answer_check;

	public Inquiry() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Inquiry(String title, String i_number, String input_date, String content, String answer_check) {
		super();
		this.title = title;
		this.i_number = i_number;
		this.input_date = input_date;
		this.content = content;
		this.answer_check = answer_check;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getI_number() {
		return i_number;
	}

	public void setI_number(String i_number) {
		this.i_number = i_number;
	}

	public String getInput_date() {
		return input_date;
	}

	public void setInput_date(String input_date) {
		this.input_date = input_date;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAnswer_check() {
		return answer_check;
	}

	public void setAnswer_check(String answer_check) {
		this.answer_check = answer_check;
	}

	@Override
	public String toString() {
		return "Inquiry [title=" + title + ", i_number=" + i_number + ", input_date=" + input_date + ", content="
				+ content + ", answer_check=" + answer_check + "]";
	}

}
