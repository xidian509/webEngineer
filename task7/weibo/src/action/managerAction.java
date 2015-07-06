package action;
import java.util.List;
import model.User;
import service.managerDao;
import com.opensymphony.xwork2.ActionSupport;

public class managerAction extends ActionSupport{
	private List<User> users;
	
	private managerDao managerdao = new managerDao(); 
	private User user;
	private String ID;

	private int pageNow = 1 ; //初始化为1,默认从第一页开始显示
	private int pageSize = 5 ; //每页显示5条记录

	public String delete() {
		managerdao.deleteById(ID);
		return SUCCESS;
	}
	 public String userlist() throws Exception {
		 users = managerdao.queryByPage(pageSize, pageNow) ;
		  return SUCCESS ;
		 }
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	public managerDao getManagerdao() {
		return managerdao;
	}
	public void setManagerdao(managerDao managerdao) {
		this.managerdao = managerdao;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public int getPageNow() {
		return pageNow;
	}
	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
}
