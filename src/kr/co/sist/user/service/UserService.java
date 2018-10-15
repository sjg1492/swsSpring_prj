package kr.co.sist.user.service;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import kr.co.sist.user.vo.ChangeInfoVO;
import kr.co.sist.user.vo.SignUpVO;
import kr.co.sist.user.vo.User_infoVO;
import kr.co.sist.user.vo.loginVO;

public interface UserService { 
	public JSONObject checkUser(String id);
	public JSONObject checkloginUser(loginVO lv,HttpSession session);
	public JSONObject signUpUserInsert(SignUpVO suv);
	public JSONObject userInfoCheck(loginVO lv);
	public JSONObject userInfoUpdate(ChangeInfoVO civ);
	public User_infoVO userInfoValue();
	public boolean loginSessionCheck(HttpSession session);
}
