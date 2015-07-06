package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.User;
import util.DB;

public class managerDao {

	public void delete(User c) {
		deleteById(c.getID());
	}
	
	public void deleteById(String ID) {
		Connection conn = DB.createConn();
		String sql = "delete from user where ID = ?";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setString(1, ID);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}
	public List<User> queryByPage (int pageSize, int pageNow) {
		   List<User> users = new ArrayList<User> () ;
		   try {
		     if (DB.createConn()!=null && pageSize>0 && pageNow>0) {
		    	 PreparedStatement pstmt = DB.createConn().prepareStatement(
		        "select * from user order by num limit "+(pageNow*pageSize-pageSize)+","+pageSize
		      );
		     ResultSet rs = pstmt.executeQuery () ;
		      
		      while (rs.next()) {
		       User user = new User () ;
		     user.setNum(rs.getInt(1));
		      user.setID (rs.getString(2)) ;
		      
		      
	    users.add (user) ;
		      }
		     }
		   } catch(SQLException e) {
		    e.printStackTrace() ;
		   }
		   return users ;
		  }
}
