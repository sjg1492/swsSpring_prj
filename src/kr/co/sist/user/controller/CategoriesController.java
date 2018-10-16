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

	// ��ǰ�� db���� ��ȸ�Ͽ� ī�װ� �� �������� set�ϰ� �����ִ���
	@RequestMapping(value = "categories.do", method = { GET, POST })
	public String Categories(HttpServletRequest request, Model m) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String target = request.getParameter("target");
		String subCate = request.getParameter("sub_cate");

		String returnURL = "indexNonMember";// target �Ķ���Ͱ� ���������� ������ ������������ �����ش�.
		// target�Ķ���Ͱ� �������� ���϶�
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
			// database��ȸ�� ���� categori �����;���.
			List<SubCategory> subCatelist = cs.searchSubCategori(fc_num);
			List<Product> prdlist = cs.searchCategoriProductAll(fc_num);
			if (subCate != null) {// subcate�� ������

				for (SubCategory subCategory : subCatelist) {// subī�װ�����Ʈ���� subcategory���� ������
					if (subCategory.getSc_name().equals(subCate)) {// subcategory���� �̸��� subcate�� ��ġ�Ѵٸ�
						System.out.println("controller :: Sub cate : " + subCategory.getSc_name());// ������Ȯ��
						// sc_num�� ��ȸ�ϰ�
						sc_num = subCategory.getSc_num();
						// db��ȸ�� product�� ���� ��ȯ�� ����
						prdlist = cs.searchCategoriProduct(sc_num);
					}
				}

			}

			// �̸� �빮�ڿ� �ҹ��� ����
			String upCategoriName = fc_name.toUpperCase();
			String loCategoriName = fc_name.toLowerCase();

			// model�� El�� ����
			m.addAttribute("categori_name", upCategoriName); // �빮�� ī�װ� ��(main�̹����� �� ī�װ���)
			m.addAttribute("categori_name_side", loCategoriName);// �ҹ��� ī�װ��� (side�޴��� �� ī�װ���)
			m.addAttribute("target", target);// target �Ķ���͸�
			m.addAttribute("sub_cate", subCate);// subCate �Ķ���͸�
			m.addAttribute("sub_categori_list", subCatelist);// main category�� ���� subī�װ�
			m.addAttribute("prd_list", prdlist);// main category�� ���� subī�װ�

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

		String returnURL = "indexNonMember";// target �Ķ���Ͱ� ���������� ������ ������������ �����ش�.
		if (prd_num != null) {
			// prd_num�Ķ���Ͱ� �������� ���϶�
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
				// database��ȸ�� ���� categori �����;���.
				List<SubCategory> subCatelist = cs.searchSubCategori(fc_num);
				Product prd = cs.searchProduct(prd_num);

				// �̸� �빮�ڿ� �ҹ��� ����
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
				// model�� El�� ����
				m.addAttribute("categori_name", upCategoriName); // �빮�� ī�װ� ��(main�̹����� �� ī�װ���)
				m.addAttribute("categori_name_side", loCategoriName);// �ҹ��� ī�װ��� (side�޴��� �� ī�װ���)
				m.addAttribute("target", target);// target �Ķ���͸�
				m.addAttribute("sub_cate", subCate);// subCate �Ķ���͸�
				m.addAttribute("sub_num", sc_num);// subCate number
				m.addAttribute("sub_categori_list", subCatelist);// main category�� ���� subī�װ�
				m.addAttribute("prd", prd);// main category�� ���� subī�װ�

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

			// �̿���� �ִ��� ������ ��ȸ�ؾ���

			// 1.id�� �̿��Ͽ� ȸ����ȣ�� ��ȸ�ؾ���.
			String m_num = cs.searchMemberNumber(id);
			// 2.m_num�� �̿��Ͽ� �̿���� ��ȸ�ؾ���.
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
					//���������� ��ȸ�Ͽ� addAttribute�� �߰�
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
		String result="�˼��մϴ�. ����Ŀ� �ٽ� �õ����ֽñ� �ٶ��ϴ�.";
		String rental_request=request.getParameter("checkout_comment");
		
		result="������ �����ϼ̽��ϴ�.";
		
		m.addAttribute("result",result);
		
		return url;
	}
}
