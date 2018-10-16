package kr.co.sist.user.dao;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.domain.Inquiry;
import kr.co.sist.user.vo.InquiryVO;

@Component
public class InquiryDAO {
	@Autowired
	private SqlSessionTemplate sst;

	public List<Inquiry> selectAllInq() throws SQLException {
		List<Inquiry> list = null;

		list = sst.selectList("selectAllInq");

		return list;
	}// selectAllInq

	public int insertInq(InquiryVO lv) throws SQLException {
		System.out.println("-----------------------"+lv);
		int count = sst.insert("insertInq", lv);
		
		return count;
	}// selectAllInq
}
