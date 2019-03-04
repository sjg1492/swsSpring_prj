package kr.co.sist.user.vo;

import lombok.Data;

public class InquiryVO {
	private String content,title,i_number,i_type;

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

	public String getI_number() {
		return i_number;
	}

	public void setI_number(String i_number) {
		this.i_number = i_number;
	}

	public String getI_type() {
		return i_type;
	}

	public void setI_type(String i_type) {
		this.i_type = i_type;
	}
	
	

}
