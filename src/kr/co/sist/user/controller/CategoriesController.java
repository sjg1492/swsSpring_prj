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

import kr.co.sist.user.service.CategoriesService;
import kr.co.sist.user.service.UserService;

@Controller
public class CategoriesController {
	@Autowired
	private CategoriesService cs;
	
	@RequestMapping(value="categories.do", method= {GET,POST})
	public String Categories(HttpServletRequest request,Model m)throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String target = request.getParameter("target");
		String returnURL="indexNonMember";
		
		if("bag".equals(target)||"accessories".equals(target)||"wallet".equals(target)) {
			
			String upCategoriName=target.toUpperCase();
			String loCategoriName=target.toLowerCase();
			String fc_num="";
			if("bag".equals(target)) {
				fc_num="1";
			}
			if("accessories".equals(target)) {
				fc_num="2";
			}
			if("wallet".equals(target)) {
				fc_num="3";
			}
			List<String> list=cs.searchSubCategori(fc_num);
			System.out.println("controller :: "+ list.size());
			m.addAttribute("categori_name",upCategoriName);
			m.addAttribute("categori_name_side",loCategoriName);
			m.addAttribute("sub_categori_list",list);
			//database조회후 하위 categori 가져와야함.
			
			
			returnURL="categories/categories";
		}
		
		return returnURL;
	}
}
