package kr.co.sist.user.service;

import javax.annotation.Resource;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import kr.co.sist.user.dao.UserDAO;

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
	
	
}
