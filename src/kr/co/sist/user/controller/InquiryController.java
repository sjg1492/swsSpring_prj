package kr.co.sist.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.user.domain.Inquiry;
import kr.co.sist.user.service.InquiryService;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.sql.SQLException;
import java.util.List;

@Controller
public class InquiryController {
	@Autowired
	private InquiryService is;
	
	@RequestMapping(value="customer_center.do", method=GET)
	public String customerMove(){
		return "customer_main";
	}
	
	@RequestMapping(value="inquiry1.do",method=GET)
	public String inquiryMove(Model model) throws SQLException{
		List<Inquiry> list = is.searchAllInq();
	 
		model.addAttribute("inq_list", list);
		System.out.println(list);
		return "inquiry1";
	}
}
