package kr.co.sist.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.user.domain.Inquiry;
import kr.co.sist.user.domain.Notice;
import kr.co.sist.user.service.NoticeService;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService ns;

	@RequestMapping(value = "notice.do", method = GET)
	public String notice1(Model model) throws SQLException {
		List<Notice> list = ns.selectAllNotice();

		model.addAttribute("notice_list", list);

		return "notice";
	}
	
	@RequestMapping(value = "notice1.do", method = GET)
	public String notice2(Model model) throws SQLException {
		List<Notice> list = ns.selectAllNotice();
		
		model.addAttribute("notice_list", list);
		
		return "notice2";
	}
}
