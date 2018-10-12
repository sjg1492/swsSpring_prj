package kr.co.sist.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.user.service.BasketService;

@Controller
public class BasketController {
	@Autowired
	private BasketService bs;

	@RequestMapping(value = "basket.do", method = GET)
	public String selectBasket(Model model) throws SQLException {
//		List<Basket> list = bs.searchAllItem();
//
//		model.addAttribute("inq_list", list);
		return "basket2";
	}// selectBasket
}
