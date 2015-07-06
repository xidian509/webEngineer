package action;

import com.opensymphony.xwork2.Action;

import com.opensymphony.xwork2.ActionSupport;
import model.User;
import service.UserDao;

public class registerAction extends ActionSupport {

	private User user;
	private UserDao userDao=new UserDao();
	public registerAction(){
		
	}
	public String doDefault()throws Exception{
		return INPUT;
	}
	public String execute() throws Exception {
		// TODO Auto-generated method stub
	
		if(user.getName().trim().equals("")||user.getPassword().trim().equals("")){
			return INPUT;
		}
		userDao.regist(user);
		return SUCCESS;
	}
	public User getUser(){
		return user;
	}

	public void setUser( User user){
		this.user=user;
	}
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
}