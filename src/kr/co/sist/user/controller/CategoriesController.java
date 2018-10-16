package kr.co.sist.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.sist.user.domain.Member;
import kr.co.sist.user.domain.Product;
import kr.co.sist.user.domain.SubCategory;
import kr.co.sist.user.service.CategoriesService;

@Controller
@SessionAttributes({ "prd_list", "sub_categori_list", "categori_name", "categori_name_side" })
public class CategoriesController {
	@Autowired
	private CategoriesService cs;

	// 상품을 db에서 조회하여 카테고리 별 페이지에 set하고 보여주는일
	@RequestMapping(value = "categories.do", method = { GET, POST })
	public String Categories(HttpServletRequest request, Model m) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String target = request.getParameter("target");
		String subCate = request.getParameter("sub_cate");

		String returnURL = "indexNonMember";// target 파라메터가 정상적이지 않으면 메인페이지를 보여준다.
		// target파라메터가 정상적인 값일때
		if ("bag".equals(target) || "accessories".equals(target) || "wallet".equals(target) || "1".equals(target)
				|| "2".equals(target) || "3".equals(target) || "watch%20&%20accessories".equals(target)) {

			String fc_num = "";
			String sc_num = "";

			if ("bag".equals(target)) {
				fc_num = "1";
			}
			if ("accessories".equals(target)) {
				fc_num = "2";
			}
			if ("wallet".equals(target)) {
				fc_num = "3";
			}
			if ("1".equals(target)) {
				fc_num = "1";
			}
			if ("2".equals(target)) {
				fc_num = "2";
			}
			if ("3".equals(target)) {
				fc_num = "3";
			}

			String fc_name = cs.serchMainCategori(fc_num);
			// database조회후 하위 categori 가져와야함.
			List<SubCategory> subCatelist = cs.searchSubCategori(fc_num);
			List<Product> prdlist = cs.searchCategoriProductAll(fc_num);
			if (subCate != null) {// subcate가 있을때

				for (SubCategory subCategory : subCatelist) {// sub카테고리리스트에서 subcategory들을 꺼내서
					if (subCategory.getSc_name().equals(subCate)) {// subcategory안의 이름과 subcate가 일치한다면
						System.out.println("controller :: Sub cate : " + subCategory.getSc_name());// 데이터확인
						// sc_num을 조회하고
						sc_num = subCategory.getSc_num();
						// db조회후 product의 정보 반환후 세팅
						prdlist = cs.searchCategoriProduct(sc_num);
					}
				}

			}

			// 이름 대문자와 소문자 설정
			String upCategoriName = fc_name.toUpperCase();
			String loCategoriName = fc_name.toLowerCase();

			// model에 El을 설정
			m.addAttribute("categori_name", upCategoriName); // 대문자 카테고리 명(main이미지에 들어갈 카테고리명)
			m.addAttribute("categori_name_side", loCategoriName);// 소문자 카테고리명 (side메뉴에 들어갈 카테고리명)
			m.addAttribute("target", target);// target 파라메터명
			m.addAttribute("sub_cate", subCate);// subCate 파라메터명
			m.addAttribute("sub_categori_list", subCatelist);// main category에 대한 sub카테고리
			m.addAttribute("prd_list", prdlist);// main category에 대한 sub카테고리

			returnURL = "categories/categories";
		}

		return returnURL;
	}

	@RequestMapping(value = "product.do", method = { GET, POST })
	public String product(HttpServletRequest request, Model m) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String target = request.getParameter("target");
		String sc_num = request.getParameter("sub_cate");
		String prd_num = request.getParameter("prd_num");
		if ("watch%20&%20accessories".equals(target)) {
			target = "accessories";
		}

		String returnURL = "indexNonMember";// target 파라메터가 정상적이지 않으면 메인페이지를 보여준다.
		if (prd_num != null) {
			// prd_num파라메터가 정상적인 값일때
			if ("1".equals(target) || "2".equals(target) || "3".equals(target)) {

				String fc_num = "";

				if ("1".equals(target)) {
					fc_num = "1";
				}
				if ("2".equals(target)) {
					fc_num = "2";
				}
				if ("3".equals(target)) {
					fc_num = "3";
				}

				String fc_name = cs.serchMainCategori(fc_num);
				// database조회후 하위 categori 가져와야함.
				List<SubCategory> subCatelist = cs.searchSubCategori(fc_num);
				Product prd = cs.searchProduct(prd_num);

				// 이름 대문자와 소문자 설정
				String upCategoriName = fc_name.toUpperCase();
				String loCategoriName = fc_name.toLowerCase();

				String subCate = "";
				switch (Integer.parseInt(sc_num)) {
				case 101:
					subCate = "tote";
					break;
				case 102:
					subCate = "shoulder";
					break;
				case 103:
					subCate = "cross";
					break;
				case 201:
					subCate = "necklace";
					break;
				case 202:
					subCate = "bracelet";
					break;
				case 203:
					subCate = "watch";
					break;
				case 301:
					subCate = "long";
					break;
				case 302:
					subCate = "short";
					break;
				case 303:
					subCate = "card";
					break;
				}
				// model에 El을 설정
				m.addAttribute("categori_name", upCategoriName); // 대문자 카테고리 명(main이미지에 들어갈 카테고리명)
				m.addAttribute("categori_name_side", loCategoriName);// 소문자 카테고리명 (side메뉴에 들어갈 카테고리명)
				m.addAttribute("target", target);// target 파라메터명
				m.addAttribute("sub_cate", subCate);// subCate 파라메터명
				m.addAttribute("sub_num", sc_num);// subCate number
				m.addAttribute("sub_categori_list", subCatelist);// main category에 대한 sub카테고리
				m.addAttribute("prd", prd);// main category에 대한 sub카테고리

				returnURL = "categories/product";
			}
		}

		return returnURL;
	}

	@RequestMapping(value = "rental.do", method = { GET, POST })
	public String rental(HttpServletRequest request, Model m, HttpSession session)throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = (String) session.getAttribute("id");
		String url = "login";
		System.out.println("controller   ++  : ["+id+"]");
		if (id != null) {

			// 이용권이 있는지 없는지 조회해야함

			// 1.id를 이용하여 회원번호를 조회해야함.
			String m_num = cs.searchMemberNumber(id);
			// 2.m_num을 이용하여 이용권을 조회해야함.
//			boolean v_flag = cs.searchTicket(m_num);
			boolean v_flag = true;
			if (v_flag) {

				String target = request.getParameter("target");
				String sub_cate = request.getParameter("sub_cate");
				String prd_num = request.getParameter("prd_num");

				if (target == null && prd_num == null && sub_cate == null) {
					target = "";
					prd_num = "";
					sub_cate = "";
				}
				Product prd=null;

				if (target != "" && prd_num != "" && sub_cate != "") {

					prd = cs.searchProduct(prd_num);
					//유저정보를 조회하여 addAttribute에 추가
					Member mem=cs.searchMemberAll(m_num);

					m.addAttribute("target", target);
					m.addAttribute("prd", prd);
					m.addAttribute("member",mem);

					url = "categories/checkout";


				}
				if (prd == null) {
					url = "indexNonMember";
				}
			}else {
				url="forward:ticket.do";
			}
		}

		return url;
	}
	@RequestMapping(value="checkout_process.do",method={GET,POST})
	public String checkoutProcess(HttpServletRequest request,Model m)throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String url="categories/checkout_result";
		String result="죄송합니다. 잠시후에 다시 시도해주시기 바랍니다.";
		String rental_request=request.getParameter("checkout_comment");
		
		result="결제에 성공하셨습니다.";
		
		m.addAttribute("result",result);
		
		return url;
	}
}
