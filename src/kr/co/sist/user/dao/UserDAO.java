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
	public String selectUserId(IdCheckVO icv) {
		String id = sst.selectOne("idCheck", icv);
		System.out.println("�����ٿ� Ȯ�� : "+id);
		return id; // 
	}
	public String selectUserPass(PwCheckVO pcv) {
		String pass = sst.selectOne("pwCheck", pcv);
		System.out.println("������й�ȣ Ȯ�� : "+pass);
		return pass; // 
	}
	public int insertUser(SignUpVO suv) {
		System.out.println("ȸ������ �ٿ����� �� ������ : "+suv);
		int resultCnt=0; // ȸ������ ���� ���� Ȯ��
		resultCnt=sst.insert("userInsert", suv);
		return resultCnt;
		
	}
	public int updateUser(ChangeInfoVO civ) {
		System.out.println("������Ʈ �ٿ����� �� ������ : "+civ);
		int resultCnt=0; // ����������Ʈ ���� ���Ȯ��
		resultCnt=sst.update("userUpdate", civ);
		System.out.println("����������� : "+resultCnt);
		return resultCnt;
		
	}
	
	//�������� �� �ѷ��� �޼ҵ�
	public List<UserInfo> selectUser(String id) {
//		String addr_full="���� �߱� ����� 125 (�Ŵ絿, �Ŵ絿 K47����)/�߱�����Ű�峪";
//		int idx=addr_full.indexOf("/");
//		String addr=addr_full.substring(0, idx);;
//		String addrDetail=addr_full.substring(idx+1);
		List<UserInfo> list=sst.selectList("userInfo",id);
		
		return list; // 
	}
	
	
	
	 
}
