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
	
	// 생성자 은닉화
	private ReBoardDAO() {
		
	}
	
	static {
		_dao=new ReBoardDAO();
	}
	
	public static ReBoardDAO getDAO() {
		return _dao;
	}
	
	/**
	 * 전체 게시글 갯수 출력
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
			System.out.println("[SQL] selectAllCount() 메서드 error : "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return count;
	}
	
	/**
	 * 페이징 처리된 페이지에 해당하는 게시글들 출력
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
				// sql 명령에서 [테이블명.컬럼명]으로 표기 가능한 점을 잊지말자. 
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
			System.out.println("[SQL] selectPostList() 메서드 error : "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return postList;
	}
	
	/**
	 * 다음 시퀀스 번호 제공
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
			System.out.println("[SQL] nextSeq() 메서드 error : "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return nextNum;
	}
	
	/**
	 * 기존 게시글 reStep 정보 업데이트
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
			System.out.println("[SQL] updateReStep() 메서드 error : "+e.getMessage());
		}
		
		return rows;
	}
	
	/**
	 * 게시글 추가
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
			System.out.println("[SQL] insertPost() 메서드 error : "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		
		return rows;		
	}
}
