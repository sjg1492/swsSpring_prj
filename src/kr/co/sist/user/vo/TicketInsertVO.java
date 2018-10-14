package kr.co.sist.user.vo;

import lombok.Data;
 
@Data
public class TicketInsertVO {
	private String m_num, v_num, start_date, end_date;

	public TicketInsertVO() {
		super();
	}

	public TicketInsertVO(String m_num, String v_num, String start_date, String end_date) {
		super();
		this.m_num = m_num;
		this.v_num = v_num;
		this.start_date = start_date;
		this.end_date = end_date;
	}
	
	
	
	
	
}//class
