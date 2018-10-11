package kr.co.sist.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.sist.domain.CpEmp;
import kr.co.sist.service.EmpService;
import kr.co.sist.user.domain.Basket;
import kr.co.sist.user.service.BasketService;

@Controller
public class BasketController {
	@Autowired
	
	private BasketService bs;

	@RequestMapping(value = "basket.do", method = GET)
	public String selectItems(Model model) throws SQLException {
		List<Basket> list = bs.searchAllItem();
		
		model.addAttribute("item_list", list);
		return "basket2";
	}// searchEmp

	@ExceptionHandler(SQLException.class)
	public ModelAndView seachError(SQLException se) {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("err/err");
		mav.addObject("err_msg", se);
		return mav;
	}// searchError
	
}
