package kr.co.sist.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.sist.user.domain.TicketDo;
import kr.co.sist.user.service.TicketService;
import kr.co.sist.user.vo.CardInfoVO;
import kr.co.sist.user.vo.TicketInsertVO;

@Controller
public class TicketController {
	@Autowired
	private TicketService ts;

	@RequestMapping(value = "ticket.do", method = GET)
	public String ticket() {
		return "ticket";
	}

	@RequestMapping(value = "ticket_checkout.do", method = GET)
	public String ticketCheckout() {
		return "ticket_checkout";
	}

	@RequestMapping(value = "payment.do", method = GET)
	public String payment() {
		return "payment";
	}
	
	//카드결제
	@RequestMapping(value = "payment_process.do", method = POST)
	public String paymentProcess(Model model, CardInfoVO civ, HttpSession session, TicketInsertVO tiv, HttpServletRequest request ) {

		// String m_num=(String)session.getAttribute("num");
		String m_num = "2222";
		civ.setM_num(m_num);
		try {
			civ.setCard(new String(civ.getCard().getBytes("8859_1"), "UTF-8"));
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		try {
			model.addAttribute("result", ts.insertCard(civ));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "payment_end";

	}

	
	
	
	@RequestMapping(value = "ticket_history.do", method = GET)
	public String ticket_history(Model model) throws SQLException {
		List<TicketDo> list = ts.searchAllTicket();
		model.addAttribute("ticket_list", list);

		return "ticket_history";
	}

	@ExceptionHandler(SQLException.class)
	public ModelAndView searchError(SQLException se) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("err/err");
		mav.addObject("err_msg", se);
		return mav;
	}// searchError

}// class
