package kr.co.sist.user.domain;

import lombok.Data;
 
@Data
public class TicketDo {
	private String v_name,start_date,end_date ;
 
	 
	
	
	public TicketDo(String v_name, String start_date, String end_date) {
		super();
		this.v_name = v_name;
		this.start_date = start_date;
		this.end_date = end_date;
	}




	public TicketDo() {
		super();
	}

	
	
	

	
	
	
}//class
