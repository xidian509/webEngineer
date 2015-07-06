package action;
import java.util.List;

import model.Weibo;
import service.WeiboDao;
import com.opensymphony.xwork2.ActionSupport;

public class weiboAction extends ActionSupport {
	private List<Weibo> weibos;
	private List<Weibo> myweibos;
	private WeiboDao weibodao = new WeiboDao(); 
	private Weibo weibo;
	private String ID;
	private int num;
	private int pageNow = 1 ; //初始化为1,默认从第一页开始显示
	private int pageSize = 5 ; //每页显示5条记录

	public int getNum() {
		return num;
	}



	public void setNum(int num) {
		this.num = num;
	}



	public List<Weibo> getWeibos() {
		return weibos;
	}



	public void setWeibos(List<Weibo> weibos) {
		this.weibos = weibos;
	}



	public WeiboDao getWeibodao() {
		return weibodao;
	}



	public void setWeibodao(WeiboDao weibodao) {
		this.weibodao = weibodao;
	}



	public Weibo getWeibo() {
		return weibo;
	}



	public void setWeibo(Weibo weibo) {
		this.weibo = weibo;
	}



	public String getID() {
		return ID;
	}



	public void setID(String ID) {
		this.ID = ID;
	}



	public String list() {
		weibos = weibodao.list();
		return SUCCESS;
	}
	public String mylist() {
		myweibos = weibodao.mylist(ID);
		return SUCCESS;
	}
	
	
	
	public List<Weibo> getMyweibos() {
		return myweibos;
	}



	public void setMyweibos(List<Weibo> myweibos) {
		this.myweibos = myweibos;
	}



	public String add() {
		weibodao.add(weibo);
		return SUCCESS;
	}
	public String update() {
		weibodao.update(weibo);
		return SUCCESS;
	}
	public String delete() {
		weibodao.deleteById(num);
		return SUCCESS;
	}
	public String addInput() {
		
		return INPUT;
	}
	public String updateInput() {
		this.weibo = this.weibodao.loadById(ID);
		return INPUT;
	}
	 public String pagelist() throws Exception {
		  weibos = weibodao.queryByPage(pageSize, pageNow) ;
		  return SUCCESS ;
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



