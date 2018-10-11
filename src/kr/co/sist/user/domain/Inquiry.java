package kr.co.sist.user.domain;


public class Inquiry {
	private String title, input_date, answer_check;

	public Inquiry() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Inquiry(String title, String input_date, String answer_check) {
		super();
		this.title = title;
		this.input_date = input_date;
		this.answer_check = answer_check;
	}

	public String getTitle() {
		return title;
	}

	public String getInput_date() {
		return input_date;
	}

	public String getAnswer_check() {
		return answer_check;
	}

	@Override
	public String toString() {
		return "Inquiry [title=" + title + ", input_date=" + input_date + ", answer_check=" + answer_check + "]";
	}


	
	
}
