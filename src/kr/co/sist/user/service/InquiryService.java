package kr.co.sist.user.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.dao.InquiryDAO;
import kr.co.sist.user.domain.Inquiry;
import kr.co.sist.user.vo.InquiryVO;

@Component
public class InquiryService {
	@Autowired
	private InquiryDAO i_dao;

	public List<Inquiry> searchAllInq() throws SQLException {
		List<Inquiry> list = null;
		list = i_dao.selectAllInq();
		System.out.println(list);
		return list;
	}// searchAllInq

	public int insertInq(InquiryVO lv) throws SQLException {
		int count=i_dao.insertInq(lv);

		return count;
	}// searchAllInq

	public InquiryVO searchInq(String i_number) throws SQLException {
		//다오부르기
		InquiryVO iv=null;
		iv=i_dao.searchInq(i_number);
		return null;
	}
}
