package web.data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import web.data.dto.MemberDTO;

public class MemberDAO extends JdbcCP {
	private static MemberDAO _dao;
	
	private MemberDAO() {
		// TODO Auto-generated constructor stub
	}
	
	static {
		_dao=new MemberDAO();
	}
	
	public static MemberDAO getDAO() {
		return _dao;
	}
	
	/**
	 * 회원정보 등록
	 * 
	 * @throws SQLException 
	 */
	public int inserMember(MemberDTO member) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
			String sql="INSERT INTO member_mvc VALUES(?,?,?,?,?,?,?,?,sysdate,null,1)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getPhone());
			pstmt.setString(4, member.getEmail());
			pstmt.setString(5, member.getZipcode());
			pstmt.setString(6, member.getAddress1());
			pstmt.setString(7, member.getAddress2());
			
			rows=pstmt.executeUpdate();
			
		} finally {
			close(con, pstmt);
		}
		
		return rows;
	}
	
	/**
	 * 등록된 전체 회원의 수 반환
	 * 
	 * @throws SQLException
	 */
	public int selectMemberCount() throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int count=0;
		
		try {
			con=getConnection();
			String sql="select count(*) from member_mvc";
			pstmt=con.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
				count=rs.getInt(1);
			}
			
		} finally {
			close(con, pstmt, rs);
		}
		
		return count;
	}
	
	/**
	 * 전체 회원을 아이디를 기준으로 정렬하였을 때
	 * start ~ end 번호 범위의 회원목록 반환
	 * 
	 * @return 회원리스트
	 * @throws SQLException 
	 */
	public List<MemberDTO> selectAllMember(int start, int end) throws SQLException{
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<MemberDTO> memberList=new ArrayList<MemberDTO>();
		
		try {
			con=getConnection();
			String sql="SELECT * FROM (SELECT rownum rn, temp.* FROM "
					+ "(SELECT * FROM member_mvc ORDER BY id) temp) "
					+ "WHERE rn BETWEEN ? AND ? ";
			
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				MemberDTO member=new MemberDTO();
				member.setId(rs.getString("id"));
				member.setName(rs.getString("name"));
				member.setPhone(rs.getString("phone"));
				member.setEmail(rs.getString("email"));
				member.setZipcode(rs.getString("zipcode"));
				member.setAddress1(rs.getString("address1"));
				member.setAddress2(rs.getString("address2"));
				member.setJoinDate(rs.getString("join_date"));
				member.setLastlogin(rs.getString("last_login"));
				member.setStatus(rs.getInt("status"));
				memberList.add(member);
			}
			
		} finally {
			close(con, pstmt, rs);
		}
		
		return memberList;
	}
	
	/**
	 * 아이디를 통한 회원조회
	 * 
	 * @throws SQLException 
	 */
	public MemberDTO selectMember(String id) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		MemberDTO member=null;
		
		try {
			con=getConnection();
			String sql="SELECT * FROM member_mvc WHERE ID=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				member=new MemberDTO();
				member.setId(rs.getString("id"));
				member.setName(rs.getString("name"));
				member.setPhone(rs.getString("phone"));
				member.setEmail(rs.getString("email"));
				member.setZipcode(rs.getString("zipcode"));
				member.setAddress1(rs.getString("address1"));
				member.setAddress2(rs.getString("address2"));
				member.setJoinDate(rs.getString("join_date"));
				member.setLastlogin(rs.getString("last_login"));
				member.setStatus(rs.getInt("status"));
			}
			
		} finally {
			close(con, pstmt, rs);
		}
		
		return member;
	}
	
	/**
	 * 회원정보 변경
	 * 
	 * @param 변경할 회원정보
	 * @throws SQLException 
	 */
	public int updateMember(MemberDTO member) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
			String sql="UPDATE membeer_mvc SET password=?,phone=?,email=?,zipcode=?"
					+ ",address1=?,address2=? WHERE id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member.getPassword());
			pstmt.setString(2, member.getPhone());
			pstmt.setString(3, member.getEmail());
			pstmt.setString(4, member.getZipcode());
			pstmt.setString(5, member.getAddress1());
			pstmt.setString(6, member.getAddress2());
			pstmt.setString(7, member.getId());
			
			rows=pstmt.executeUpdate();
			
		} finally {
			close(con, pstmt);
		}
		
		return rows;
	}
	
	/**
	 * 회원정보 임시삭제처리
	 * 아이디 검색 & status 정보 변경(-1)
	 * @throws SQLException 
	 */
	public int updateMemberAsDelete(String id) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
			String sql="UPDATE membeer_mvc SET status=? WHERE id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, -1);
			pstmt.setString(2, id);
			
			rows=pstmt.executeUpdate();
		} finally {
			close(con, pstmt);
		}
		
		return rows;
	}
	
	
}
