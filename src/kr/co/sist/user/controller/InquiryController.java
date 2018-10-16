package kr.co.sist.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.user.domain.Inquiry;
import kr.co.sist.user.service.InquiryService;
import kr.co.sist.user.vo.InquiryVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class InquiryController {
	@Autowired
	private InquiryService is;

	@RequestMapping(value = "customer_center.do", method = {POST,GET})
	public String customerMove() {
		return "customer_main";
	}

/*	@RequestMapping(value = "inquiry.do", method= {POST,GET})
	public String inquiry(Model model) throws SQLException {
		List<Inquiry> list = is.searchAllInq();

		model.addAttribute("inq_list", list);
		return "inquiry1";
	}*/

	@RequestMapping(value = "inquiry1.do", method = {POST,GET})
	public String inquiry1(Model model) throws SQLException {
		List<Inquiry> list = is.searchAllInq();
		for(Inquiry iq:list) {
			System.out.println(iq);
		}

		model.addAttribute("inq_list", list);
		return "inquiry1";
	}
	
	@RequestMapping(value = "inquiry2.do", method = {POST,GET})
	public String inquiry2(Model model) throws SQLException {

		return "inquiry2";
	}
	
	@RequestMapping(value = "inquiry3.do", method = {POST,GET})
	public String inquiry3(HttpServletRequest request,Model model) throws SQLException {
		String i_number=request.getParameter("i_number");
		//i넘으로 1:1문의 조회
		InquiryVO iv=is.searchInq(i_number);
		//모델에 addattribute
		model.addAttribute("iv",iv);
		
		return "inquiry3";
	}
	
	@RequestMapping(value = "inquiry4.do", method = {POST,GET})
	public String inquiry4(HttpServletRequest request,Model model, HttpSession session) throws SQLException {
		int count=0;
		InquiryVO iv=null;
		
		System.out.println("====="+iv);
		
//		 String n_num=(String)session.getAttribute("n_num");
		String n_num = "2214";
//		iv.setN_num(n_num);
		try {
			iv.setI_type(new String(iv.getI_type().getBytes("8859_1"),"utf-8"));
			iv.setTitle(new String(iv.getTitle().getBytes("8859_1"),"utf-8"));
			iv.setContent(new String(iv.getContent().getBytes("8859_1"),"utf-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		if(n_num!=null) {
			count=is.insertInq(iv);
			model.addAttribute("inq_list", count);
			System.out.println(count);
		}
		return "inquiry4";
	}

	@RequestMapping(value = "faq1.do", method = GET)
	public String faq1() {
		return "faq1";
	}

	@RequestMapping(value = "faq2.do", method = GET)
	public String faq2() {
		return "faq2";
	}

	@RequestMapping(value = "faq3.do", method = GET)
	public String faq3() {
		return "faq3";
	}

	@RequestMapping(value = "faq4.do", method = GET)
	public String faq4() {
		return "faq4";
	}

	@RequestMapping(value = "faq5.do", method = GET)
	public String faq5() {
		return "faq5";
	}
}
