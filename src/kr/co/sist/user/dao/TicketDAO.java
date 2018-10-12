package kr.co.sist.user.dao;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.domain.TicketDo;
import kr.co.sist.user.vo.CardInfoVO;

@Component
public class TicketDAO {
	@Autowired
	private SqlSessionTemplate sst;
	
	public List<TicketDo> selectAllTicket() throws SQLException {
		List<TicketDo> list=null;
		
		list=sst.selectList("selectAllTicket");
		
		return list;
	}//selectAllTicket
	
	
		public int insertCardInfo(CardInfoVO civ) throws SQLException {
			
		System.out.println("----"+ civ);
			int cont=sst.insert("insertCardInfo",civ);
		
		
		return cont;
			
		}//selectAllTicket
		/*		boolean flag=false;
		int cont=sst.insert("insertCardInfo");
		if(cont==0) {
			System.out.println("티켓구매 실패");
		}else {
			flag=true;
		}
		return flag;*/

	
/*	public boolean insertAllTicket(TicketInsertVO tivo, CardInfoVO civo) throws SQLException {
		boolean flag=false;
		int cont=sst.insert("insertTicket");
		if(cont==0) {
			System.out.println("티켓구매 실패");
		}else {
			flag=true;
		}
		return flag;
	}//selectAllTicket
*/	
	
	

}//class
