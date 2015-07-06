package service;
import model.User;
import java.sql.*;
public class UserDao  {
	
	
	public UserDao(){
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public User regist(User user)throws SQLException{
		Connection con=null;
		PreparedStatement psm=null;
		ResultSet rs=null;
		try{
			String url="jdbc:mysql://localhost:3306/weibo";
			con=DriverManager.getConnection(url,"root","19920104yin");
			String sql="insert into user(ID,password,name,sex,age,jiguan) values(?,?,?,?,?,?)";
			psm=con.prepareStatement(sql);
			psm.setString(1, user.getID());
			psm.setString(2,user.getPassword());
			psm.setString(3, user.getName());
			psm.setString(4, user.getSex());
			psm.setString(5,user.getAge());
			psm.setString(6, user.getJiguan());
			psm.execute();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			closeResultSet(rs);
			closePreparedStatement(psm);
			closeConnection(con);
		}
		return user;
	}
	public void closeResultSet(ResultSet rs){
		if(rs!=null)
			try{
		rs.close();
		
	}catch(SQLException e){
		e.printStackTrace();
	}

}
	public void closeConnection(Connection con){
		if(con!=null)
			try{
		con.close();
		
	}catch(SQLException e){
		e.printStackTrace();
	}

}
	public void closePreparedStatement(PreparedStatement psm){
		if(psm!=null)
			try{
		psm.close();
		
	}catch(SQLException e){
		e.printStackTrace();
	}

}
}
