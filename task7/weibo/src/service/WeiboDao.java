package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Fans;
import model.Weibo;
import util.DB;

public class WeiboDao {
	public void add(Weibo c) {
		Connection conn = DB.createConn();
		String sql = "insert into weibo1 values (null, ?, ?)";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setString(1, c.getID());
			ps.setString(2, c.getContent());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}
	
	public List<Weibo> list() {
		Connection conn = DB.createConn();
		String sql = "select * from weibo1";
		PreparedStatement ps = DB.prepare(conn, sql);
		List<Weibo> weibos = new ArrayList<Weibo>();
		try {
			ResultSet rs = ps.executeQuery();
			Weibo c = null;
			while(rs.next()) {
				c = new Weibo();
				c.setNum(rs.getInt("num"));
				c.setID(rs.getString("ID"));
				c.setContent(rs.getString("content"));
				weibos.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return weibos;
	}
	
	public void delete(Weibo c) {
		deleteById(c.getNum());
	}
	
	public void deleteById(int num) {
		Connection conn = DB.createConn();
		String sql = "delete from weibo1 where num = ?";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setInt(1, num);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}
	
	public void update(Weibo c) {
		Connection conn = DB.createConn();
		String sql = "update weibo1 set content = ? where ID = ?";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setString(1, c.getContent());
			ps.setString(2, c.getID());
		
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}
	
	public Weibo loadById(String ID) {
		Connection conn = DB.createConn();
		String sql = "select * from weibo1 where ID = ?";
		PreparedStatement ps = DB.prepare(conn, sql);
		Weibo c = null;
		try {
			ps.setString(1, ID);
			ResultSet rs = ps.executeQuery();
		
			if(rs.next()) {
				c = new Weibo();
				c.setID(rs.getString("ID"));
				c.setContent(rs.getString("content"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return c;
	}
	public List<Weibo> mylist(String ID) {
		Connection conn = DB.createConn();
		String sql = "select * from weibo1 where ID =?";
		PreparedStatement ps = DB.prepare(conn, sql);
		List<Weibo> myweibos = new ArrayList<Weibo>();
		try {
			ps.setString(1, ID);
			ResultSet rs = ps.executeQuery();
			Weibo c = null;
			while(rs.next()) {
				c = new Weibo();
				c.setNum(rs.getInt("num"));
				
				c.setContent(rs.getString("content"));
				myweibos.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return myweibos;
	}
	public List<Weibo> queryByPage (int pageSize, int pageNow) {
		   List<Weibo> weibos = new ArrayList<Weibo> () ;
		   try {
		     if (DB.createConn()!=null && pageSize>0 && pageNow>0) {
		    	 PreparedStatement pstmt = DB.createConn().prepareStatement(
		        "select * from weibo1 limit "+(pageNow*pageSize-pageSize)+","+pageSize
		      );
		     ResultSet rs = pstmt.executeQuery () ;
		      
		      while (rs.next()) {
		       Weibo weibo = new Weibo () ;
		       weibo.setNum(rs.getInt(1)) ;
		       weibo.setID (rs.getString(2)) ;
		       weibo.setContent (rs.getString(3)) ;
		      
		       weibos.add (weibo) ;
		      }
		     }
		   } catch(SQLException e) {
		    e.printStackTrace() ;
		   }
		   return weibos ;
		  }
		}


