package web.mvc.service;

import java.sql.SQLException;
import java.util.List;

import web.data.dao.MemberDAO;
import web.data.dto.MemberDTO;
import web.mvc.exception.MemberExistingException;

public class MemberInfoService {
	private static MemberInfoService _service;
	
	private MemberInfoService() {
		// TODO Auto-generated constructor stub
	}
	
	static {
		_service=new MemberInfoService();
	}
	
	public static MemberInfoService getService() {
		return _service;
	}
	
	/**
	 * 회원등록 메소드
	 * @throws SQLException 
	 * @throws MemberExistingException 
	 */
	public void registerMember(MemberDTO member) throws SQLException, MemberExistingException {
		if(MemberDAO.getDAO().selectMember(member.getId())!=null) {
			throw new MemberExistingException("이미 등록된 아이디 입니다.");
		}
		MemberDAO.getDAO().inserMember(member);
	}
	
	/**
	 * 회원조회 메소드
	 * - 페이징처리 미구현 (yet)
	 * 
	 * @throws SQLException 
	 */
	public List<MemberDTO> showAllMember() throws SQLException {
		
		int count=MemberDAO.getDAO().selectMemberCount();
		List<MemberDTO> memberList=MemberDAO.getDAO().selectAllMember(0, count);

			
		return memberList;
	}
}
