package kr.co.sist.user.dao;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.domain.Basket;
import kr.co.sist.user.domain.Notice;

@Component
public class NoticeDAO {
	@Autowired
	private SqlSessionTemplate sst;

	public List<Notice> selectAllNotice() throws SQLException {
		List<Notice> list = null;

		list = sst.selectList("selectAllNotice");

		return list;
	}// selectAllNotice
}
