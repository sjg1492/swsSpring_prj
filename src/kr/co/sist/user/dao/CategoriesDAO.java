package kr.co.sist.user.dao;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.domain.Product;
import kr.co.sist.user.domain.SubCategory;

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
	
	public int rowCnt(String sc_num) {
		int cnt=0;
		
		cnt=sst.selectOne("selectcontCategoriProduct",sc_num);
		
		return cnt;
	}

}
