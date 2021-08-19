package web.data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TestDAO extends JdbcCP {
	private static TestDAO _dao;
	
	private TestDAO() {
		// TODO Auto-generated constructor stub
	}
	
	static {
		_dao=new TestDAO();
	}
	
	public static TestDAO getDAO() {
		return _dao;
	}
	
	public int selectTest() {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int rows=0;
		
		try {
			con=getConnection();
			String sql="SELECT * FROM emp";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				rows++;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
		}
		
		return rows;
	}
	
}
