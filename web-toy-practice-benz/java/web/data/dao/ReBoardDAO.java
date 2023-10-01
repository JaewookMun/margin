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
	
	static {
		_dao=new ReBoardDAO();
	}
	
	public static ReBoardDAO getDAO() {
		return _dao;
	}
	
	/**
	 * ��ü �Խñ� ���� ���
	 * 
	 * @return
	 */
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
	
	/**
	 * ����¡ ó���� �������� �ش��ϴ� �Խñ۵� ���
	 * 
	 * @param startRow
	 * @param endRow
	 * @return
	 */
	
	public List<ReBoardDTO> selectPostList(int startRow, int endRow){
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<ReBoardDTO> postList = new ArrayList<ReBoardDTO>();
		
		try {
			con=getConnection();
			String sql="SELECT * FROM (SELECT ROWNUM rn, temp.* FROM "
					+ "(SELECT * FROM reply_board ORDER BY ref DESC, re_step) temp)"
					+ " WHERE rn BETWEEN ? and ?";
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
	
	/**
	 * ���� ������ ��ȣ ����
	 */
	public int nextNum() {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int nextNum = 0;
		
		try {
			con=getConnection();
			String sql="SELECT board_seq.nextval FROM dual";
			pstmt=con.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
				nextNum=rs.getInt(1);
			}
			
		} catch (SQLException e) {
			System.out.println("[SQL] nextSeq() �޼��� error : "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return nextNum;
	}
	
	/**
	 * ���� �Խñ� reStep ���� ������Ʈ
	 * 
	 * @param ref
	 * @param reStep
	 * @return
	 */
	public int updateReStep(int ref, int reStep) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
			String sql="UPDATE reply_board SET reStep=reStep+1 WHERE ref=? AND reStep>?";
			pstmt=con.prepareStatement(sql);
			
			rows=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("[SQL] updateReStep() �޼��� error : "+e.getMessage());
		}
		
		return rows;
	}
	
	/**
	 * �Խñ� �߰�
	 * 
	 * @param post
	 * @return
	 */
	public int insertPost(ReBoardDTO post) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
			String sql="INSERT INTO reply_board VALUES(?, ?, ?, ?, ?, ?, ?, sysdate, ?)";
			
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, post.getNo());
			pstmt.setString(2, post.getWriter());
			pstmt.setString(3, post.getTitle());
			pstmt.setInt(4, post.getRef());
			pstmt.setInt(5, post.getReStep());
			pstmt.setInt(6, post.getReLevel());
			pstmt.setString(7, post.getContent());
			pstmt.setInt(8, post.getStatus());
			
			rows=pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[SQL] insertPost() �޼��� error : "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		
		return rows;		
	}
}
