package kr.co.sist.user.vo;


public class userVO {
	String id,names,pw;

	public userVO(String id, String names, String pw) {
		super();
		this.id = id;
		this.names = names;
		this.pw = pw;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNames() {
		return names;
	}

	public void setNames(String names) {
		this.names = names;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	@Override
	public String toString() {
		return "userVO [id=" + id + ", names=" + names + ", pw=" + pw + "]";
	}
	
	
}
