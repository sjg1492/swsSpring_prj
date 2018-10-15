package kr.co.sist.user.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.dao.TicketDAO;
import kr.co.sist.user.domain.TicketDo;
import kr.co.sist.user.vo.CardInfoVO;
import kr.co.sist.user.vo.TicketInsertVO;

@Component	
public class TicketService {
	 
	@Autowired
	private TicketDAO t_dao;
	
	//�̿�ǳ��� ��ȸ
	public List<TicketDo> searchAllTicket()throws SQLException{
		List<TicketDo> list=null;
		list=t_dao.selectAllTicket();
		
		return list;
	}//searchAllTicket
	
	
	//�̿�� �������� DB���-�̿ϼ�
	public boolean insertTicket(TicketInsertVO tiv) throws SQLException{
		boolean flag=false;
		int addTicket=t_dao.insertTicket(tiv);
		
		if(addTicket==0) {
			flag=true;
		}
		
		return flag;
	}//insertTicket	
	
	
	//�̿�� ���Ž� ī������ DB���
	public boolean insertCard(CardInfoVO civ) throws SQLException{
		boolean flag=false;
		int addCard=t_dao.insertCardInfo(civ);
		if(addCard==0) {
			flag=true;
		}
		
		return flag;
	}//insertCard
	
	
	
/*	//�̿�ǳ��� ���������� ��ȸ-�̿�
	private int pageScale;
	
	public TicketService() {
		pageScale=10;
	}//TicketService
	
	public int getTotalCount() {
		NamecardDAO n_dao=NamecardDAO.getInstance();
		int cnt=0;
		
		try {
			cnt=n_dao.namecardTotalCount();
		} catch (SQLException e) {
			e.printStackTrace();
		}//end catch
		return cnt;
	}//getTotalCount

	public int getPageScale() {
		return pageScale;
	}//getPageScale
	
	
	public List<NCListVO> searchNc(int currentPage){
		
		NamecardDAO n_dao=NamecardDAO.getInstance();
				
		List<NCListVO> list=null;
		try {
			//1.��ü �Խù��� ����
			int totalCount=getTotalCount();
			//2.�� ȭ�鿡 ������ ������ �� 
			
			//3.�� ������ �� ���
			int totalPage=totalPage(totalCount,pageScale);
			
			//5.���۹�ȣ ���ϱ�
			int startNum=startNum(currentPage, pageScale);
			
			//6.�� ��ȣ ���ϱ�
			int endNum=endNum(startNum, pageScale);
			
			NCStartEndVO ncseVO=new NCStartEndVO(startNum, endNum);
			//���۹�ȣ�� ����ȣ�� �ش��ϴ� ������ ��ȸ
			list=n_dao.selectList(ncseVO);
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}//end catch
		return list;
	}//searchNc
	
	//����ȣ
	private int endNum(int startNum, int pageScale) {
		return startNum+pageScale-1;
	}//endNum
	
	//���۹�ȣ
	private int startNum(int tempPage, int pageScale) {
		return tempPage*pageScale-pageScale+1;
	}//startNum
	
	public int totalPage(int totalCount, int pageScale){
		int totalPage=totalCount/pageScale;
		if(totalCount%pageScale!=0){
			totalPage++;
		}//end if
		return totalPage;
	}//totalPage
	
	
	public String indexList(int current_page, int total_page, String list_url) {
		  
	int pagenumber=3;  
	int startpage=0; 
	int endpage=0; 
	int curpage=0; 
	StringBuilder strList=new StringBuilder();

	startpage = ((current_page - 1) / pagenumber) * pagenumber + 1;

	endpage = (((startpage - 1) + pagenumber) / pagenumber) * pagenumber;

	if (total_page <= endpage){
		endpage = total_page;
	}//end if

	if ( current_page > pagenumber) {
		curpage = startpage - 1; 
		strList.append("[<a href='").append(list_url).append("&current_page=").append(curpage).append("'>&lt;&lt;</a>]");
	}else{
		strList.append("[&lt;&lt;]");
	}//end else 
	strList.append(" ... ");

	curpage = startpage;

	while (curpage <= endpage){

		if (curpage == current_page) {
			strList.append("[ <a href='").append(list_url).append("&current_page=").append(current_page).append("'>").append(current_page).append("</a> ]");
		} else {
			strList.append("[ <a href='").append(list_url).append("&current_page=").append(curpage).append("'>").append(curpage).append("</a> ]");
		}//end else
		curpage++;
	}//end while
	strList.append(" ... ");
	
	if ( total_page > endpage) {
		curpage = endpage + 1;
		strList.append("[ <a href='").append(list_url).append("&current_page=").append(curpage).append("'>&gt;&gt;</a>]");
	}else{
		strList.append("[&gt;&gt;]");
	}//end else 
	
		return strList.toString();
	}//indexList
*/	
	
}//class
