package kr.co.sist.user.dao;

import java.io.IOException;
import java.io.Reader;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.type.SqlTimestampTypeHandler;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import kr.co.sist.user.vo.SignUpVO;
import kr.co.sist.user.vo.loginVO;


@Component
public class UserDAO {
	    
	
	@Autowired
	private SqlSessionTemplate sst ;
	 
	public int selectID(String id) {
		System.out.println(id);
		int result=0;
		System.out.println(sst);
		String selectId="";
		selectId =sst.selectOne("signId", id);

		
		//���̵� �������� ������� result �� 0 (��밡��)
		//���̵� �����Ұ�� result �� 1 
		if(selectId==null) {
			return result;
		}else {
			 result=1;
		}
//		System.out.println(selectId);
		
		//result = (String)selectOne("id",id);
		//"Select COUNT(*) from ȸ�� where id = #{id}";
		return result;
	}
	
	public String selectLogin(loginVO lv) {
		 String id = sst.selectOne("loginCheck", lv);
		 System.out.println("�����ٿ� Ȯ�� : "+id);
	     return id; // 
	}
	public int insertUser(SignUpVO suv) {
		System.out.println("ȸ������ �ٿ����� �� ������ : "+suv);
		int resultCnt=0; // ȸ������ ���� ���� Ȯ��
		resultCnt=sst.insert("userInsert", suv);
		return resultCnt;
		
	}
	
	 
}
