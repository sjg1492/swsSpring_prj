package kr.co.sist.user.dao;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CategoriesDAO {
	
	@Autowired
	private SqlSessionTemplate sst ;
	//����ī�װ��� ��ȸ
	public List<String> selectSubCategori(String fc_num) throws SQLException{
		List<String> list=null;
		
		list=sst.selectList("sws.categoriesMapper.selecetSubCategori",fc_num);
		System.out.println("list_size : "+list.size());
		return list;
	}
	public String selectMainCategori(String fc_num) throws SQLException {
		String mainCate=null;
		mainCate=sst.selectOne("sws.categoriesMapper.selecetMainCategori",fc_num);
		
		return mainCate;
	}
	

}
