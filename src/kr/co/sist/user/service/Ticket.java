package kr.co.sist.user.service;

import kr.co.sist.user.vo.CardInfoVO;


public interface Ticket {
	
	public void card_register(CardInfoVO civ)throws Exception;

	
	
	//�̿�� �������� DB���
/*	public boolean insertTicket(TicketInsertVO tivo) throws SQLException{
		boolean flag=false;
		
		
		flag=t_dao.insertAllTicket(tivo, null);
		
		
		return flag;
	}//insertTicket
*/	
	//�̿�� ���Ž� ī������ DB���
	public String insertCard(CardInfoVO civ);
	
	
	
}//class
