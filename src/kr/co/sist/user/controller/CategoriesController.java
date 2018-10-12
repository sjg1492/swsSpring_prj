package kr.co.sist.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.user.domain.Product;
import kr.co.sist.user.domain.SubCategory;
import kr.co.sist.user.service.CategoriesService;
import kr.co.sist.user.service.UserService;

@Controller
public class CategoriesController {
	@Autowired
	private CategoriesService cs;
	
	//상품을 db에서 조회하여 카테고리 별 페이지에 set하고 보여주는일
	@RequestMapping(value="categories.do", method= {GET,POST})
	public String Categories(HttpServletRequest request,Model m)throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		 
		String target = request.getParameter("target");
		String subCate = request.getParameter("sub_cate");
		
		String returnURL="indexNonMember";//target 파라메터가 정상적이지 않으면 메인페이지를 보여준다.
		//target파라메터가 정상적인 값일때
		if("bag".equals(target)||"accessories".equals(target)||"wallet".equals(target)) {
			
			String fc_num="";
			String sc_num="";
			
			if("bag".equals(target)) {
				fc_num="1";
			}
			if("accessories".equals(target)) {
				fc_num="2";
			}
			if("wallet".equals(target)) {
				fc_num="3";
			}
			
			
			String fc_name=cs.serchMainCategori(fc_num);
			//database조회후 하위 categori 가져와야함.
			List<SubCategory> subCatelist=cs.searchSubCategori(fc_num);
			List<Product> prdlist=cs.searchCategoriProductAll(fc_num);
			if(subCate!=null) {//subcate가 있을때
				
				for(SubCategory subCategory:subCatelist) {//sub카테고리리스트에서 subcategory들을 꺼내서
					if(subCategory.getSc_name().equals(subCate)) {//subcategory안의 이름과 subcate가 일치한다면
						System.out.println("controller :: Sub cate : "+subCategory.getSc_name());//데이터확인
						//sc_num을 조회하고
						sc_num=subCategory.getSc_num();
						//db조회후 product의 정보 반환후 세팅
						prdlist=cs.searchCategoriProduct(sc_num);
					}
				}
				
			}
			
			//이름 대문자와 소문자 설정
			String upCategoriName=fc_name.toUpperCase();
			String loCategoriName=fc_name.toLowerCase();
			
			
			//model에 El을 설정
			m.addAttribute("categori_name",upCategoriName); //대문자 카테고리 명(main이미지에 들어갈 카테고리명)
			m.addAttribute("categori_name_side",loCategoriName);//소문자 카테고리명 (side메뉴에 들어갈 카테고리명)
			m.addAttribute("target",target);//target 파라메터명
			m.addAttribute("sub_cate",subCate);//subCate 파라메터명
			m.addAttribute("sub_categori_list",subCatelist);//main category에 대한 sub카테고리
			System.out.println("controller :: "+ prdlist.size());//확인하기 위한 syso(추후 삭제)
			m.addAttribute("prd_list",prdlist);//main category에 대한 sub카테고리
			
			returnURL="categories/categories";
		}
		
		return returnURL;
	}
}
