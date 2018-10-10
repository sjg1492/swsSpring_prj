package kr.co.sist.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CategoriesController {
	@RequestMapping(value="categories.do", method= {GET,POST})
	public String Categories(HttpServletRequest request,Model m)throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String target = request.getParameter("target");
		String returnURL="indexNonMember";
		if("bag".equals(target)||"accessories".equals(target)||"wallet".equals(target)) {
			
		String upCategoriName=target.toUpperCase();
		m.addAttribute("categori_name",upCategoriName);
		
		returnURL="categories/categories";
		}
		return returnURL;
	}
}
