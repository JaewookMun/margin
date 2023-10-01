package web.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO extends OracleConnectionPool {
	private static BoardDAO _instance;
	
	static {
		_instance = new BoardDAO();
	}
	
	public static BoardDAO getInstance() {
		return _instance;
	}
	
	// check : Sequence(시퀀스) 초기화
	
	public int insertPost(BoardDTO post) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int row=0;
		try {
			con=getConnection();
			String sql="INSERT INTO board_practice VALUES(no_seq.nextval, ?, ?, ?, sysdate)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, post.getName());
			pstmt.setString(2, post.getTitle());
			pstmt.setString(3, post.getContent());
			
			row=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("[insetPost()]sql error : "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		
		return row;
	}
	
	
	public List<BoardDTO> getAllPosts(){
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<BoardDTO> postList = new ArrayList<BoardDTO>();
		try {
			con=getConnection();
			String sql="SELECT * FROM board_practice ORDER BY no DESC";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				BoardDTO post = new BoardDTO();
				post.setNo(rs.getInt("no"));
				post.setName(rs.getString("name"));
				post.setTitle(rs.getString("title"));
				post.setContent(rs.getString("content"));
				post.setRegDate(rs.getString("regdate"));
				postList.add(post);
			}

		} catch (SQLException e) {
			System.out.println("[getAllPosts()]sql error : "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return postList;
	}
	
	// 하나만 지울 경우
	public int deletePost(int no) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int row=0;
		
		try {
			con=getConnection();
			String sql="DELETE FROM board_practice WHERE no=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, no);
			
			row=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("[deletePost()]sql error : "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		
		return row;
	}
	
	
	/* 반복처리할 수 있음.
	// 두개 이상 지울 경우
	public int[] deletePosts(int[] noArray) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int[] posts=null;
		try {
			con=getConnection();
			con.setAutoCommit(false);
			String sql = "DELETE FROM board_practice WHERE no=?";
			pstmt=con.prepareStatement(sql);
			
			for(int i=0; i<noArray.length; i++) {
				pstmt.setInt(1, noArray[i]);
				pstmt.addBatch();
			}
			posts = pstmt.executeBatch();
			con.commit();
			
		} catch (SQLException e) {
			System.out.println("[deletePosts()]sql error : "+e.getMessage());
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} finally {
			close(con, pstmt);
		}
		
		return posts;
	}
	*/
	
	
	public int updatePost(int no, String content) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int row=0;
		
		try {
			con=getConnection();
			String sql="UPDATE board_practice SET content=? WHERE no=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, content);
			pstmt.setInt(2, no);
			
			row=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("[updatePost()]sql error : "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		
		return row;
	}
}
