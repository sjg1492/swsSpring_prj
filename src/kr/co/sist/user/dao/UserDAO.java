package kr.co.sist.user.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.type.SqlTimestampTypeHandler;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import kr.co.sist.user.domain.UserInfo;
import kr.co.sist.user.vo.ChangeInfoVO;
import kr.co.sist.user.vo.IdCheckVO;
import kr.co.sist.user.vo.PwCheckVO;
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
	public String selectUserId(IdCheckVO icv) {
		String id = sst.selectOne("idCheck", icv);
		System.out.println("유저다오 확인 : "+id);
		return id; // 
	}
	public String selectUserPass(PwCheckVO pcv) {
		String pass = sst.selectOne("pwCheck", pcv);
		System.out.println("유저비밀번호 확인 : "+pass);
		return pass; // 
	}
	public int insertUser(SignUpVO suv) {
		System.out.println("회원가입 다오에서 본 데이터 : "+suv);
		int resultCnt=0; // 회원가입 성공 여부 확인
		resultCnt=sst.insert("userInsert", suv);
		return resultCnt;
		
	}
	public int updateUser(ChangeInfoVO civ) {
		System.out.println("업데이트 다오에서 본 데이터 : "+civ);
		int resultCnt=0; // 유저업데이트 정보 결과확인
		resultCnt=sst.update("userUpdate", civ);
		System.out.println("변경됬을려나 : "+resultCnt);
		return resultCnt;
		
	}
	
	//유저정보 를 뿌려줄 메소드
	public List<UserInfo> selectUser(String id) {
//		String addr_full="서울 중구 난계로 125 (신당동, 신당동 K47빌딩)/중구가시키드나";
//		int idx=addr_full.indexOf("/");
//		String addr=addr_full.substring(0, idx);;
//		String addrDetail=addr_full.substring(idx+1);
		List<UserInfo> list=sst.selectList("userInfo",id);
		
		return list; // 
	}
	
	
	
	 
}
