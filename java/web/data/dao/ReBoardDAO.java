package web.data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import web.data.OracleConnectionPool;
import web.data.dto.ReBoardDTO;

public class ReBoardDAO extends OracleConnectionPool {
	private static ReBoardDAO _dao;
	
	// ������ ����ȭ
	private ReBoardDAO() {
		
	}
	
	public static ReBoardDAO getDAO() {
		return _dao;
	}
	
	// ��ü �Խñ� ���� ���
	public int selectAllCount() {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int count=0;
		
		try {
			con=getConnection();
			String sql="SELECT count(*) FROM reply_board";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				count=rs.getInt(1);
			}
			
		} catch (SQLException e) {
			System.out.println("[SQL] selectAllCount() �޼��� error : "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return count;
	}
	
	// ����¡ ó���� �������� �ش��ϴ� �Խñ� ���
	public List<ReBoardDTO> selectPostList(int startRow, int endRow){
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<ReBoardDTO> postList = new ArrayList<ReBoardDTO>();
		
		try {
			con=getConnection();
			String sql="SELECT * FROM (SELECT ROWNUM rn, temp.* FROM "
					+ "((SELECT * FROM reply_board ORDER BY ref DESC, re_step) temp)"
					+ " WHERE rn ? and ?";
				// sql ��ɿ��� [���̺��.�÷���]���� ǥ�� ������ ���� ��������. 
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rs=pstmt.executeQuery();
			while(rs.next()) {
				ReBoardDTO post=new ReBoardDTO();
				post.setNo(rs.getInt("no"));
				post.setWriter(rs.getString("writer"));
				post.setTitle(rs.getString("title"));
				post.setRef(rs.getInt("ref"));
				post.setReStep(rs.getInt("re_step"));
				post.setReLevel(rs.getInt("re_level"));
				post.setContent(rs.getString("content"));
				post.setRegDate(rs.getString("reg_date"));
				post.setStatus(rs.getInt("status"));
				postList.add(post);
			}
			
		} catch (SQLException e) {
			System.out.println("[SQL] selectPostList() �޼��� error : "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return postList;
	}
}
