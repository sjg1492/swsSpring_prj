package kr.co.sist.user.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.dao.InquiryDAO;
import kr.co.sist.user.dao.NoticeDAO;
import kr.co.sist.user.domain.Inquiry;
import kr.co.sist.user.domain.Notice;

@Component
public class NoticeService {
	@Autowired
	private NoticeDAO n_dao;

	public List<Notice> selectAllNotice() throws SQLException {
		List<Notice> list = null;
		list = n_dao.selectAllNotice();
		return list;
	}// searchAllInq
}
