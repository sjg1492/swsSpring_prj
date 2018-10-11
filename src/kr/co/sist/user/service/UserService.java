package kr.co.sist.user.service;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import kr.co.sist.user.vo.SignUpVO;
import kr.co.sist.user.vo.loginVO;

public interface UserService { 
	public JSONObject checkUser(String id);
	public JSONObject checkloginUser(loginVO lv,HttpSession session);
	public JSONObject signUpUserInsert(SignUpVO suv);
	public boolean loginSessionCheck(HttpSession session);
}
