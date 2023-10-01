package web.data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import web.data.OracleConnectionPool;
import web.data.dto.MemberDTO;

public class MemberDAO extends OracleConnectionPool {
	private static MemberDAO _instance=null;
	
	static {
		_instance=new MemberDAO();
	}
	
	public static MemberDAO getDAO() {
		return _instance;
	}
	
	
	// 회원가입을 통한 정보 입력
	public int insertMember(MemberDTO member) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;

		try {
			con=getConnection();
			
			String sql="INSERT INTO member VALUES(?,?,?,?,sysdate, sysdate, 1)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getPhone());
			
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[SQL] insertMember method error : "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		
		return rows;
	}
	
	// 가입된 회원정보 확인
	public MemberDTO selectMember(String id) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		MemberDTO member=null;
		
		try {
			con=getConnection();
			
			String sql="SELECT * FROM member WHERE id='"+id+"'";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				member=new MemberDTO();
				member.setId(rs.getString("id"));
				member.setPassword(rs.getString("password"));
				member.setName(rs.getString("name"));
				member.setPhone(rs.getString("phone"));
				member.setRegDate(rs.getString("reg_date"));
				member.setLastLogin(rs.getString("last_login"));
				member.setGrade(rs.getInt("grade"));
			}
			
		} catch (SQLException e) {
			System.out.println("[SQL] selectMember method error : "+e.getMessage());
		}

		return member;
	}
	
}
