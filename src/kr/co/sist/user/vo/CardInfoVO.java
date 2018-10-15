package kr.co.sist.user.vo;

import lombok.Data;

@Data
public class CardInfoVO {
	 
	private String m_num,card, cardNumber1,cardNumber2,cardNumber3,cardNumber4,
	month,year,password;
	private int ticket_type;

	public CardInfoVO() {
		super();
	}

	public CardInfoVO(String m_num, String card, String cardNumber1, String cardNumber2, String cardNumber3,
			String cardNumber4, String month, String year, String password, int ticket_type) {
		super();
		this.m_num = m_num;
		this.card = card;
		this.cardNumber1 = cardNumber1;
		this.cardNumber2 = cardNumber2;
		this.cardNumber3 = cardNumber3;
		this.cardNumber4 = cardNumber4;
		this.month = month;
		this.year = year;
		this.password = password;
		this.ticket_type = ticket_type;
	}

	


	
	
}//class
