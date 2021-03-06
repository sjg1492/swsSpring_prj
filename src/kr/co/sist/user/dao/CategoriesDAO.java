package kr.co.sist.user.dao;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.domain.Member;
import kr.co.sist.user.domain.Product;
import kr.co.sist.user.domain.SubCategory;
import kr.co.sist.user.vo.insertProductRentalVO;

@Component
public class CategoriesDAO {
	
	@Autowired
	private SqlSessionTemplate sst ;
	//하위카테고리들 조회
	public List<SubCategory> selectSubCategori(String fc_num) throws SQLException{
		List<SubCategory> list=null;
		
		list=sst.selectList("sws.categoriesMapper.selecetSubCategori",fc_num);
		
		return list;
	}
	
	//main 카테고리들 조회
	public String selectMainCategori(String fc_num) throws SQLException {
		String mainCate=null;
		
		mainCate=sst.selectOne("sws.categoriesMapper.selecetMainCategori",fc_num);
		
		return mainCate;
	}
	
	public List<Product> selectCategoriProductAll(String fc_num) throws SQLException{
		List<Product> list = null;
		
		list = sst.selectList("sws.categoriesMapper.selectCategoriProductAll",fc_num);
		
		return list;
	}//joinSubquery

	public List<Product> selectCategoriProduct(String sc_num)throws SQLException {
		List<Product> list = null;
		
		list = sst.selectList("sws.categoriesMapper.selectCategoriProduct",sc_num);
		
		return list;
	}
	

	public Product selectProduct(String prd_num)throws SQLException {
		Product prd=null;
		prd=sst.selectOne("sws.categoriesMapper.selectProduct",prd_num);
		return prd;
	}

	public String selectMemberNumber(String id)throws SQLException {
		String m_num=null;
		m_num=sst.selectOne("sws.categoriesMapper.selectMemberNumber",id);
		return m_num;
	}

	public boolean selectTicket(String m_num)throws SQLException {
		boolean v_flag=false;
		
		String ticket=sst.selectOne("sws.categoriesMapper.selectTicket",m_num);
		if(ticket!=null) {
			v_flag=true;
		}
		
		return v_flag;
	}

	public Member selectMemberAll(String m_num) {
		Member member=null;
		
		member=sst.selectOne("sws.categoriesMapper.selectMemberAll",m_num);
		
		return member;
	}

	public boolean insertProductRental(insertProductRentalVO iprVO) {
		boolean flag=false;
		System.out.println("들어갔니 :"+iprVO);
		int insertCnt=sst.insert("sws.categoriesMapper.insertProductRental", iprVO);
		System.out.println("dao cnt:"+insertCnt);
		if(insertCnt!=0) {
			flag=true;
		}
		return flag;
	}

}
