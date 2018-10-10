package kr.co.sist.user.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.dao.CategoriesDAO;

@Component
public class CategoriesService {
	@Autowired
	private CategoriesDAO c_dao;
	
	public List<String> searchSubCategori(String fc_num){
		List<String> list=null;
		
		try {
			list=c_dao.selectSubCategori(fc_num);
		} catch (SQLException e) {
			System.err.println("DB조회중 error가 발생하였습니다 : subCategori Select");
			e.printStackTrace();
		}
		
		System.out.println("service: "+list.size());
		return list;
	}

	public String serchMainCategori(String fc_num) {
		String mainCate=null;
		
		try {
			mainCate=c_dao.selectMainCategori(fc_num);
		} catch (SQLException e) {
			System.err.println("DB조회중 error가 발생하였습니다 : subCategori Select");
			e.printStackTrace();
		}
		
		return mainCate;
	}
	
	
}
