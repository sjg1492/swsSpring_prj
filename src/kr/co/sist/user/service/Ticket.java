package kr.co.sist.user.service;

import kr.co.sist.user.vo.CardInfoVO;


public interface Ticket {
	
	public void card_register(CardInfoVO civ)throws Exception;

	
	
	//이용권 구매정보 DB등록
/*	public boolean insertTicket(TicketInsertVO tivo) throws SQLException{
		boolean flag=false;
		
		
		flag=t_dao.insertAllTicket(tivo, null);
		
		
		return flag;
	}//insertTicket
*/	
	//이용권 구매시 카드정보 DB등록
	public String insertCard(CardInfoVO civ);
	
	
	
}//class
