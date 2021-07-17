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
			String sql="SELECT * FROM board_practice";
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
}
