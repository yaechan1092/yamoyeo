package yamoyeo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.apache.log4j.chainsaw.Main;

public class CommentDAO {
	
	
	
	public static Connection getConnection() { // connection 객체 생성
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "yaechan1092", "921021");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return conn;
	}
	
	public void insertComment(CommentVO comment){	//comment 추가
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		Statement stmt =null;
		

		try {
			conn = getConnection();
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select max(comment_id) from ya_comment"); //최신 인덱스 추출
			rs.next();
			
			
			pstmt = conn.prepareStatement("insert into ya_comment(group_id, user_id, comment_text, comment_id) values(?,?,?,?)");
//			pstmt.setString(1, comment.getGroup_id()); pstmt.setString(2, comment.getUser_id());
			pstmt.setString(1, "test"); pstmt.setString(2, "test");
			pstmt.setString(3, comment.getComment_text()); pstmt.setInt(4, rs.getInt(1)+1); //comment_id 1증가
		
			
			pstmt.executeQuery();
		

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {

				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}
	
	public ArrayList<CommentVO> getComment(String group_id) {  //group_id에 속한 comment 리턴

		Connection conn = null;
		PreparedStatement pstmt = null;
		ArrayList<CommentVO> comment_list = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select comment_id,comment_text,user_id from ya_comment where group_id =? order by comment_id asc");
			pstmt.setString(1, group_id);

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				comment_list.add(new CommentVO(rs.getInt("comment_id"),rs.getString("comment_text"),rs.getString("user_id"),rs.getString("group_id")));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {

				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return comment_list;
	}
	
public void deleteComment(int comment_id){
		
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement( "delete from ya_comment where comment_id = ?" );
			pstmt.setInt(1, comment_id); 
			

			pstmt.executeQuery();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {

				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		
	}


}
