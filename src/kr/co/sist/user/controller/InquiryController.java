package kr.co.sist.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class InquiryController {
	@RequestMapping(value="customer_center.do",method=GET)
	public String inquiryMove() {
		return "customer_main";
	}
	
	
	
	
}
