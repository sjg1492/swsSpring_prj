package kr.co.sist.user.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.dao.InquiryDAO;
import kr.co.sist.user.domain.Inquiry;

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
}
