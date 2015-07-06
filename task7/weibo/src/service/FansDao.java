package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Fans;
import util.DB;

public class FansDao {
	public void add(Fans c) {
		Connection conn = DB.createConn();
		String sql = "insert into concern values (null, ?, ?)";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setString(1, c.getID());
			ps.setString(2, c.getC_ID());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
	}
	
	public List<Fans> list() {
		Connection conn = DB.createConn();
		String sql = "select * from user";
		PreparedStatement ps = DB.prepare(conn, sql);
		List<Fans> fans = new ArrayList<Fans>();
		try {
			ResultSet rs = ps.executeQuery();
			Fans c = null;
			while(rs.next()) {
				c = new Fans();
				c.setNum(rs.getInt("num"));
				c.setID(rs.getString("ID"));
				fans.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return fans;
	}
	
	public void delete(Fans c) {
		deleteById(c.getNum());
	}
	
	public void deleteById(int num) {
		Connection conn = DB.createConn();
		String sql = "delete from concern  where num = ?";
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
	
	
	public List<Fans> myConcern(String ID) {
		Connection conn = DB.createConn();
		String sql = "select * from concern where ID =?";
		PreparedStatement ps = DB.prepare(conn, sql);
		List<Fans> mycons = new ArrayList<Fans>();
		try {
			ps.setString(1, ID);
			ResultSet rs = ps.executeQuery();
			Fans c = null;
			while(rs.next()) {
				c = new Fans();
				c.setNum(rs.getInt("num"));
				
				c.setC_ID(rs.getString("C_ID"));
				mycons.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return mycons;
	}

	public List<Fans> myFans(String ID) {
		Connection conn = DB.createConn();
		String sql = "select * from concern where C_ID =?";
		PreparedStatement ps = DB.prepare(conn, sql);
		List<Fans> myfans = new ArrayList<Fans>();
		try {
			ps.setString(1, ID);
			ResultSet rs = ps.executeQuery();
			Fans c = null;
			while(rs.next()) {
				c = new Fans();
				c.setNum(rs.getInt("num"));
				
				c.setID(rs.getString("ID"));
				myfans.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return myfans;
	}
	
}
