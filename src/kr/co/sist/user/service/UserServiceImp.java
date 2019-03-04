package kr.co.sist.user.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import kr.co.sist.user.dao.UserDAO;
import kr.co.sist.user.domain.UserInfo;
import kr.co.sist.user.vo.ChangeInfoVO;
import kr.co.sist.user.vo.IdCheckVO;
import kr.co.sist.user.vo.PwCheckVO;
import kr.co.sist.user.vo.SignUpVO;
import kr.co.sist.user.vo.User_infoVO;
import kr.co.sist.user.vo.loginVO;

@Service
public class UserServiceImp implements UserService {
	public String id;
	public UserServiceImp() {
	}// UserServiceImp

	@Autowired
	private UserDAO userDAO;

	@Override
	public JSONObject checkUser(String id) {
		JSONObject jo = new JSONObject();
		int result = userDAO.selectID(id);
		jo.put("cnt", result);
		return jo;
	}// checkUser

	@Override
	public JSONObject checkloginUser(loginVO lv, HttpSession session) {
		String id = userDAO.selectLogin(lv);
		JSONObject jo = new JSONObject();
		int loginResult = 0;
		if (id != null) {
			loginResult = 1;
			session.setAttribute("id", id);
		}
		jo.put("loginResult", loginResult);
		// session.setAttribute("id", arg1);
		return jo;
	}// checkloginUser

	@Override
	public JSONObject signUpUserInsert(SignUpVO suv) {
		int signUpResult = userDAO.insertUser(suv);
		JSONObject jo = new JSONObject();
		jo.put("result", signUpResult);
		return jo;
	}// signUpUserInsert

	@Override
	public boolean loginSessionCheck(HttpSession session) {
		boolean flag = false;

		String id = (String) session.getAttribute("id");
		System.out.println("loginSessionCheck : " + id);
		if (id != null) {
			flag = true;
		}
		return flag;
	}// loginSessionCheck

	@Override
	public JSONObject userInfoCheck(loginVO lv) {
		id = userDAO.selectLogin(lv);
		JSONObject jo = new JSONObject();
		jo.put("result", id);
		return jo;
	}// userInfoCheck

	@Override
	public User_infoVO userInfoValue() {
		List<UserInfo> list = userDAO.selectUser(id);
		// String id=userDAO.selectLogin(lv);
		User_infoVO uiv = null;
		for (UserInfo ui : list) {
			System.out.println(ui);
			String name = ui.getName();
			String pass = ui.getPassword();
			String question = ui.getQuestion_num();
			String answer = ui.getAnswer();
			String email = ui.getEmail();
			String zipcode = ui.getZipcode();
			int idx = ui.getAddress().indexOf("/");
			String addr = ui.getAddress().substring(0, idx);
			String addrDetail = ui.getAddress().substring(idx + 1);
			String phone = ui.getPhone();
			String phone1 = phone.substring(0, 3);
			String phone2 = phone.substring(3, 7);
			String phone3 = phone.substring(7);
			uiv = new User_infoVO(name, pass, question, answer, phone1, phone2, phone3, email, zipcode, addr,
					addrDetail);
		}
		return uiv;
	}// end userInfoValue

	@Override
	public JSONObject userInfoUpdate(ChangeInfoVO civ) {
		String result = String.valueOf(userDAO.updateUser(civ));
		JSONObject jo = new JSONObject();
		jo.put("result", result);
		return jo;
	}

	@Override
	public JSONObject userIdFind(IdCheckVO icv) {
		
		String id = userDAO.selectUserId(icv);//?醫�??類ｋ궖 癰궰�野�?野껉퀗�궢
		JSONObject jo = new JSONObject();
		jo.put("id", id);
		return jo;
	}

	@Override
	public JSONObject userPwFind(PwCheckVO pcv) {
		String pass = userDAO.selectUserPass(pcv);//?醫�??類ｋ궖 癰궰�野�?野껉퀗�궢
		JSONObject jo = new JSONObject();
		jo.put("pass", pass);
		return jo;
	}
}// end class
