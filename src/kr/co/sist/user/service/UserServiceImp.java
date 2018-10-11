package kr.co.sist.user.service;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.sist.user.dao.UserDAO;
import kr.co.sist.user.vo.SignUpVO;
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
		System.out.println("�̰Ŵ� �������� üũ���� : "+result);
		jo.put("cnt",result);// cnt �� ��Ʈ��
//		System.out.println("���̽� ������Ʈ Ȯ�� : "+jo.get("cnt")+30+"\n ����Ʈ�� Ȯ�� : "+jo.toJSONString());
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

	@Override
	public JSONObject signUpUserInsert(SignUpVO suv) {
		int signUpResult=userDAO.insertUser(suv);
		JSONObject jo=new JSONObject();
		jo.put("result", signUpResult);
		return jo;
	}
	
	
}
