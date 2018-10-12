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
	
	//��ǰ�� db���� ��ȸ�Ͽ� ī�װ� �� �������� set�ϰ� �����ִ���
	@RequestMapping(value="categories.do", method= {GET,POST})
	public String Categories(HttpServletRequest request,Model m)throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		 
		String target = request.getParameter("target");
		String subCate = request.getParameter("sub_cate");
		
		String returnURL="indexNonMember";//target �Ķ���Ͱ� ���������� ������ ������������ �����ش�.
		//target�Ķ���Ͱ� �������� ���϶�
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
			//database��ȸ�� ���� categori �����;���.
			List<SubCategory> subCatelist=cs.searchSubCategori(fc_num);
			List<Product> prdlist=cs.searchCategoriProductAll(fc_num);
			if(subCate!=null) {//subcate�� ������
				
				for(SubCategory subCategory:subCatelist) {//subī�װ�����Ʈ���� subcategory���� ������
					if(subCategory.getSc_name().equals(subCate)) {//subcategory���� �̸��� subcate�� ��ġ�Ѵٸ�
						System.out.println("controller :: Sub cate : "+subCategory.getSc_name());//������Ȯ��
						//sc_num�� ��ȸ�ϰ�
						sc_num=subCategory.getSc_num();
						//db��ȸ�� product�� ���� ��ȯ�� ����
						prdlist=cs.searchCategoriProduct(sc_num);
					}
				}
				
			}
			
			//�̸� �빮�ڿ� �ҹ��� ����
			String upCategoriName=fc_name.toUpperCase();
			String loCategoriName=fc_name.toLowerCase();
			
			
			//model�� El�� ����
			m.addAttribute("categori_name",upCategoriName); //�빮�� ī�װ� ��(main�̹����� �� ī�װ���)
			m.addAttribute("categori_name_side",loCategoriName);//�ҹ��� ī�װ��� (side�޴��� �� ī�װ���)
			m.addAttribute("target",target);//target �Ķ���͸�
			m.addAttribute("sub_cate",subCate);//subCate �Ķ���͸�
			m.addAttribute("sub_categori_list",subCatelist);//main category�� ���� subī�װ�
			System.out.println("controller :: "+ prdlist.size());//Ȯ���ϱ� ���� syso(���� ����)
			m.addAttribute("prd_list",prdlist);//main category�� ���� subī�װ�
			
			returnURL="categories/categories";
		}
		
		return returnURL;
	}
}
