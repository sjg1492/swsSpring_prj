package kr.co.sist.user.dao;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.domain.Basket;

@Component
public class BasketDAO {
	@Autowired
	private SqlSessionTemplate sst;

	public List<Basket> selectAllItems() throws SQLException {
		List<Basket> list = null;

		list = sst.selectList("selectAllItems");

		return list;
	}// selectAllItems
}
