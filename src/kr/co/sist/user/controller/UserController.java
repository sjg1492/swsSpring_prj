package kr.co.sist.user.controller;


import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.sist.user.service.UserService;
import kr.co.sist.user.vo.loginVO;

@Controller
public class UserController {
	
	@RequestMapping(value="index.do", method=GET)
	public String Index() {
		return "indexNonMember";
	}
	@RequestMapping(value="signUp.do", method=GET)
	public String Signup() {
		return "signUp";
	}

	@RequestMapping(value="Company_info.do", method=GET)
	public String Company_info() {
		return "Company_info";
	}
	
//	@RequestMapping(value="Company_info.do", method=GET)
//	public String Company_info() {
//		return "Company_info";
//	} // ������ 
/*	@RequestMapping(value="login.do", method=GET)
	public String login() {
		return "login";
	}*/
	@RequestMapping(value="signUpTerms.do", method=GET)
	public String signUpTerms() {
		return "signUpTerms";
	}
	@RequestMapping(value="customer_main.do", method=GET)
	public String customer_main() {
		return "customer_main";
	}
	
	@RequestMapping(value="faq1.do", method=GET)
	public String faq1() {
		return "faq1";
	}
	
	@RequestMapping(value="indexMember.do", method=POST)
	public String indexMember() {
		return "indexMember";
	}
	@RequestMapping(value="inquiry1.do", method=GET)
	public String inquiry1() {
		return "inquiry1";
	}
	
	
	@Autowired
	private UserService us;

		@RequestMapping(value="idcheck.do",method= POST)
		@ResponseBody
		public String idcheck(String id){
			System.out.println("�̰Ŵ� ������Ʈ�ѷ� ���̵� �޾ƿ°� :"+id);
			JSONObject jo=us.checkUser(id);
			return jo.toJSONString();
//			"/ddd/ddd"// �̰Ŵ� WebContent ���ͽ������ϰ�
//			"ddd/ddd"//WebContent�ȿ� Web-INF / View
		}
		
		@RequestMapping(value="loginCheck.do",method= POST)
		@ResponseBody
		public String loginCheck(loginVO lvo,HttpSession session){
			System.out.println("�̰Ŵ� �α���üũ���� ���̵� �޾ƿ°� :"+lvo.getId());
			JSONObject loginData=us.checkloginUser(lvo,session);
			
			return loginData.toJSONString();
		}
	
//	@RequestMapping(value="/signUp.do")
//	public ModelAndView openSignUp(CommandMap commandMap) throws Exception{
//		ModelAndView mav = new ModelAndView("signUp");
//		
//		return mav;
//	}
//	
	
		
}
