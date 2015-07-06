package action;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;
import model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

 public class loginAction extends ActionSupport{
   
	 
	


		private User user;

	
		private Statement sm;
		private ResultSet rs=null;
		private Connection con=null;
	    private int right=0;
	 
	 
	 
	 public String execute() throws Exception {

	     try{
	    	 Class.forName("com.mysql.jdbc.Driver");
	     }catch(Exception e){
	    	 e.printStackTrace();
	     }
	    try{
	     String url="jdbc:mysql://localhost:3306/weibo";
	     con=DriverManager.getConnection(url,"root","19920104yin");
	     sm=con.createStatement();
	      String sql1="select * from user where ID = '"+user.getID()+"'";
	      String sql2="select * from manager where ID = '"+user.getID()+"'";
	      if(user.getKind().equals("user"))
	    	  rs=sm.executeQuery(sql1);
	      else
	    	  rs=sm.executeQuery(sql2);
		 
	    }catch(SQLException e){
	    	e.printStackTrace();
	    }
		 
		 while(rs.next()){
		 
		if(rs.getString("password").equals(user.getPassword()))
			
			right=1;
		else
			right=0;
		
    }	
		 if((right==1)&&("manager").equals(user.getKind()))
			 
		 return INPUT;
		 else if((right==1)&&("user").equals(user.getKind())){
			 ActionContext actionContext = ActionContext.getContext();

			 Map session = actionContext.getSession();
	        session.put("ID", user.getID());

			 return SUCCESS;}
		 else
			 return ERROR;
	 }
		
	 public User getUser(){
		 return user;
	 }
	 public void setUser(User user){
		 this.user=user;
	 }
}