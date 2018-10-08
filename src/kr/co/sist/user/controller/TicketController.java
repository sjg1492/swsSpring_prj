package kr.co.sist.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

import javax.inject.Inject;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.sist.user.service.UserService;
import static org.springframework.web.bind.annotation.RequestMethod.GET;


@Controller
public class TicketController {
	@RequestMapping(value="ticket.do", method=GET)
	public String ticket() {
		return "ticket";
	}
	
	@RequestMapping(value="login.do", method=GET)
	public String login() {
		return "login";
	}
	
	
	

}//class
