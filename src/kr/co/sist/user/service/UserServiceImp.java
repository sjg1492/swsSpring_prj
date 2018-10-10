package kr.co.sist.user.service;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import kr.co.sist.user.dao.UserDAO;
import kr.co.sist.user.vo.loginVO;

@Service("userService")
@Component
public class UserServiceImp implements UserService{

	
	public UserServiceImp() {
		
	}
	
	@Autowired
	private UserDAO userDAO;

	@Override
	public JSONObject checkUser(String id) {
		JSONObject jo = new JSONObject();
		int result = userDAO.selectID(id);
		System.out.println("이거는 유저서비스 체크유저 : "+result);
		jo.put("cnt",result);
		return jo;
	}

	@Override
	public JSONObject checkloginUser(loginVO lv,HttpSession session) {
		String id= userDAO.selectLogin(lv);
		JSONObject jo= new JSONObject();
		int loginResult=0;
		if(id!=null) {
			loginResult=1;
			session.setAttribute("id", id);
		}
		jo.put("loginResult", loginResult);
//		session.setAttribute("id", arg1);
		return jo;
	}
	
	
}
