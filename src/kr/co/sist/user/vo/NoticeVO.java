package kr.co.sist.user.vo;

public class NoticeVO {
	private int n_number, manager_number;
	private String title, contents, input_date, notice_flag, id;

	public NoticeVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public NoticeVO(int n_number, int manager_number, String title, String contents, String input_date,
			String notice_flag, String id) {
		super();
		this.n_number = n_number;
		this.manager_number = manager_number;
		this.title = title;
		this.contents = contents;
		this.input_date = input_date;
		this.notice_flag = notice_flag;
		this.id = id;
	}

	public int getN_number() {
		return n_number;
	}

	public void setN_number(int n_number) {
		this.n_number = n_number;
	}

	public int getManager_number() {
		return manager_number;
	}

	public void setManager_number(int manager_number) {
		this.manager_number = manager_number;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getInput_date() {
		return input_date;
	}

	public void setInput_date(String input_date) {
		this.input_date = input_date;
	}

	public String getNotice_flag() {
		return notice_flag;
	}

	public void setNotice_flag(String notice_flag) {
		this.notice_flag = notice_flag;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
