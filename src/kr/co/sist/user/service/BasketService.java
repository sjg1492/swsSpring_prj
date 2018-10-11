package kr.co.sist.user.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.dao.BasketDAO;
import kr.co.sist.user.domain.Basket;

@Component
public class BasketService {
	@Autowired
	private BasketDAO b_dao;

	public List<Basket> searchAllItem() throws SQLException {
		List<Basket> list = null;
		list = b_dao.selectAllItems();
		return list;
	}// searchAllItem
}
