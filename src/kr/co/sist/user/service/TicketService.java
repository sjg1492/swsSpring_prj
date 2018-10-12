package kr.co.sist.user.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.dao.TicketDAO;
import kr.co.sist.user.domain.TicketDo;
import kr.co.sist.user.vo.CardInfoVO;

@Component	
public class TicketService {
	
	@Autowired
	private TicketDAO t_dao;
	
	public List<TicketDo> searchAllTicket()throws SQLException{
		List<TicketDo> list=null;
		list=t_dao.selectAllTicket();
		
		return list;
	}//searchAllTicket
	
	
	//이용권 구매정보 DB등록
/*	public boolean insertTicket(TicketInsertVO tivo) throws SQLException{
		boolean flag=false;
		
		
		flag=t_dao.insertAllTicket(tivo, null);
		
		
		return flag;
	}//insertTicket
*/	
	
	
	//이용권 구매시 카드정보 DB등록
	public boolean insertCard(CardInfoVO civ) throws SQLException{
		boolean flag=false;
		int i=t_dao.insertCardInfo(civ);
		if(i==0) {
			flag=true;
		}
		
		return flag;
	}//insertTicket
	
	
}//class
