package kr.co.sist.user.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.dao.CategoriesDAO;
import kr.co.sist.user.domain.Member;
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
		}
		
		return list;
	}

	public String serchMainCategori(String fc_num) {
		String mainCate=null;
		
		try {
			mainCate=c_dao.selectMainCategori(fc_num);
		} catch (SQLException e) {
			System.err.println("DB조회중 error가 발생하였습니다 : MainCategori Select");
		}
		
		return mainCate;
	}
	public List<Product> searchCategoriProductAll(String fc_num){
		List<Product> list=null;
		
		try {
			list=c_dao.selectCategoriProductAll(fc_num);
		} catch (SQLException e) {
			System.err.println("DB조회중 error가 발생하였습니다 : CategoriProductAll Select");
		}
		
		return list;
	}
	public List<Product> searchCategoriProduct(String sc_num){
		List<Product> list=null;
		
		try {
			list=c_dao.selectCategoriProduct(sc_num);
		} catch (SQLException e) {
			System.err.println("DB조회중 error가 발생하였습니다 : CategoriProductAll Select");
		}
		
		return list;
	}

	public Product searchProduct(String prd_num) {
		Product prd=null;
		try {
			prd=c_dao.selectProduct(prd_num);
		} catch (SQLException e) {
			System.err.println("DB조회중 error가 발생하였습니다 : searchProduct Select");
		}
		return prd;
	}
	
	//아이디로 회원번호 조회
	public String searchMemberNumber(String id) {
		String m_num=null;
		try {
			m_num=c_dao.selectMemberNumber(id);
		} catch (SQLException e) {
			System.err.println("DB조회중 error가 발생하였습니다 : searchMemberNumber Select");
		}
		return m_num;
	}

	public boolean searchTicket(String m_num) {
		boolean v_flag=false;
		try {
			v_flag=c_dao.selectTicket(m_num);
		} catch (SQLException e) {
			System.err.println("DB조회중 error가 발생하였습니다 : searchTicket Select");
		}
		return v_flag;
	}

	public Member searchMemberAll(String m_num) {
		Member member=null;
		member=c_dao.selectMemberAll(m_num);
		return member;
	}

	public boolean insertProductRental(String prd_num, String m_num) {
		
		return false;
	}
	
	
}
