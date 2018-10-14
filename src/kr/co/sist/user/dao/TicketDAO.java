package kr.co.sist.user.dao;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.domain.TicketDo;
import kr.co.sist.user.vo.CardInfoVO;
import kr.co.sist.user.vo.TicketInsertVO;

@Component
public class TicketDAO {
	@Autowired
	private SqlSessionTemplate sst;

	public List<TicketDo> selectAllTicket() throws SQLException {
		List<TicketDo> list = null;

		list = sst.selectList("selectAllTicket");

		return list;
	}// selectAllTicket

	public int insertCardInfo(CardInfoVO civ) throws SQLException {

		// System.out.println("----"+ civ);
		int cont = sst.insert("insertCardInfo", civ);

		return cont;

	}// insertCardInfo

	public int insertTicket(TicketInsertVO tiv) throws SQLException {
		
		 System.out.println("----"+ tiv);
		int cont = sst.insert("insertTicket", tiv);
		
		return cont;
	}// insertTicket

}// class
