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

		
		//아이디가 존재하지 않을경우 result 값 0 (사용가능)
		//아이디가 존재할경우 result 값 1 
		if(selectId==null) {
			return result;
		}else {
			 result=1;
		}
//		System.out.println(selectId);
		
		//result = (String)selectOne("id",id);
		//"Select COUNT(*) from 회원 where id = #{id}";
		return result;
	}
	
	public String selectLogin(loginVO lv) {
		 String id = sst.selectOne("loginCheck", lv);
		 System.out.println("유저다오 확인 : "+id);
	     return id; // 
	}
	public int insertUser(SignUpVO suv) {
		System.out.println("회원가입 다오에서 본 데이터 : "+suv);
		int resultCnt=0; // 회원가입 성공 여부 확인
		resultCnt=sst.insert("userInsert", suv);
		return resultCnt;
		
	}
	
	 
}
