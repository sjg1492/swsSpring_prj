package kr.co.sist.user.vo;

public class InquiryVO {
	private String content,title,n_num,i_type;

	public InquiryVO() {
		super();
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

	public String getN_num() {
		return n_num;
	}

	public void setN_num(String n_num) {
		this.n_num = n_num;
	}

	public String getI_type() {
		return i_type;
	}

	public void setI_type(String i_type) {
		this.i_type = i_type;
	}

	@Override
	public String toString() {
		return "InquiryVO [content=" + content + ", title=" + title + ", n_num=" + n_num + ", i_type=" + i_type + "]";
	}

	

	
}
