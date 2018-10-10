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
	//하위카테고리들 조회
	public List<String> selectSubCategori(String fc_num) throws SQLException{
		List<String> list=null;
		
		list=sst.selectList("sws.categoriesMapper.selecetSubCategori",fc_num);
		System.out.println("list_size : "+list.size());
		return list;
	}
	

}
