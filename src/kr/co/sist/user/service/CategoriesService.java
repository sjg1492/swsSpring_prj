package kr.co.sist.user.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.dao.CategoriesDAO;
import kr.co.sist.user.domain.Product;
import kr.co.sist.user.domain.SubCategory;

@Component
public class CategoriesService {
	@Autowired
	private CategoriesDAO c_dao;
	
	public List<SubCategory> searchSubCategori(String fc_num){
		List<SubCategory> list=null;
		
		try {
			list=c_dao.selectSubCategori(fc_num);
		} catch (SQLException e) {
			System.err.println("DB조회중 error가 발생하였습니다 : subCategori Select");
			e.printStackTrace();
		}
		
		return list;
	}

	public String serchMainCategori(String fc_num) {
		String mainCate=null;
		
		try {
			mainCate=c_dao.selectMainCategori(fc_num);
		} catch (SQLException e) {
			System.err.println("DB조회중 error가 발생하였습니다 : MainCategori Select");
			e.printStackTrace();
		}
		
		return mainCate;
	}
	public List<Product> searchCategoriProductAll(String fc_num){
		List<Product> list=null;
		
		try {
			list=c_dao.selectCategoriProductAll(fc_num);
		} catch (SQLException e) {
			System.err.println("DB조회중 error가 발생하였습니다 : CategoriProductAll Select");
			e.printStackTrace();
		}
		
		return list;
	}
	public List<Product> searchCategoriProduct(String sc_num){
		List<Product> list=null;
		
		try {
			list=c_dao.selectCategoriProduct(sc_num);
		} catch (SQLException e) {
			System.err.println("DB조회중 error가 발생하였습니다 : CategoriProductAll Select");
			e.printStackTrace();
		}
		
		System.out.println("service: "+list.size());
		return list;
	}
	
	
}
