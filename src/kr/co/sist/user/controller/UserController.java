package kr.co.sist.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import javax.activation.CommandMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import kr.co.sist.user.service.UserService;
import kr.co.sist.user.vo.ChangeInfoVO;
import kr.co.sist.user.vo.IdCheckVO;
import kr.co.sist.user.vo.PwCheckVO;
import kr.co.sist.user.vo.SignUpVO;
import kr.co.sist.user.vo.User_infoVO;
import kr.co.sist.user.vo.loginVO;

@Controller
@SessionAttributes({ "id", "pass" })
public class UserController {

	@RequestMapping(value = "Modify_password.do", method = GET)
	public String Modify_password() {
		return "Modify_password";
	}
	@RequestMapping(value = "idpw_find.do", method = GET)
	public String idpw_find() {
		return "idpw_find";
	}

	//페이지 이동 및 값 넘기기
		@RequestMapping(value="Modify_info.do", method=POST)
		public String Modify_info(Model m) {
			User_infoVO uiv=us.userInfoValue();
			m.addAttribute("user_info",uiv);
			
			return "Modify_info";
		}
	@RequestMapping(value="index.do", method= {GET,POST})
	public String Index(HttpSession session) {
		boolean flag=false;
		flag=us.loginSessionCheck(session);
			
		return "indexNonMember";
	}

	@RequestMapping(value = "signUp.do", method = GET)
	public String Signup() {
		return "signUp";
	}

	@RequestMapping(value="Company_info.do", method = GET)
	public String Company_info() {
		return "Company_info";
	}

	@RequestMapping(value = "signUpTerms.do", method = GET)
	public String signUpTerms() {
		return "signUpTerms";
	}
	@RequestMapping(value = "logout.do", method = GET)
	public String logout(SessionStatus ss) {
		ss.setComplete();
		return "indexNonMember";
	}

	
	
	

	@RequestMapping(value = "login.do", method = GET)
	public String login() {
		return "login";
	}

	@Autowired
	private UserService us;

	@RequestMapping(value = "idcheck.do", method = POST)
	@ResponseBody
	public String idcheck(String id) {
		System.out.println("이거는 유저컨트롤러 아이디 받아온거 :" + id);
		JSONObject jo = us.checkUser(id);
		return jo.toJSONString();
		// "/ddd/ddd"// 이거는 WebContent 부터시작을하고
		// "ddd/ddd"//WebContent안에 Web-INF / View
	}
	
	@RequestMapping(value = "id_find.do", method=POST)
	@ResponseBody
	public String id_find(IdCheckVO icv) {
		System.out.println("이거는 유저컨트롤러 아이디체크 받아온거 :" + icv);
		JSONObject jo = us.userIdFind(icv);
		return jo.toJSONString();
	}
	@RequestMapping(value = "pw_find.do", method=POST)
	@ResponseBody
	public String pw_find(PwCheckVO pcv) {
		System.out.println("이거는 유저컨트롤러 비밀번호찾기 정보 받아온거 :" + pcv);
		JSONObject jo = us.userPwFind(pcv);
		return jo.toJSONString();
	}
	@RequestMapping(value = "loginCheck.do", method = POST)
	@ResponseBody
	public String loginCheck(loginVO lvo, Model m, HttpSession session) {
		System.out.println("이거는 로그인체크에서 아이디 받아온거 :" + lvo.getId());
		JSONObject loginData = us.checkloginUser(lvo, session);
		m.addAttribute("user_id", lvo.getId());

		return loginData.toJSONString();
	}

	@RequestMapping(value = "signUpInsert.do", method = GET)
	@ResponseBody
	public String signUpInsert(SignUpVO suv) {
		System.out.println("이거는 로그인체크에서 아이디 받아온거 :" + suv);
		JSONObject signUpDate = us.signUpUserInsert(suv);
		return signUpDate.toJSONString();
	}

	@RequestMapping(value = "userinfo.do", method = POST)
	@ResponseBody
	public String userInfo(loginVO lv) {
		System.out.println("이거는 로그인체크에서 아이디 받아온거 :" + lv);
		JSONObject userInfoDate=us.userInfoCheck(lv);
		return userInfoDate.toJSONString();
	}
	
	@RequestMapping(value="changInfo.do",method= POST)
	@ResponseBody
	public String changInfo(ChangeInfoVO civ){
		System.out.println("회원정보수정 :"+civ);
		JSONObject userInfoDate=us.userInfoUpdate(civ);
		return userInfoDate.toJSONString();
	}

}
