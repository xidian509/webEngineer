package action;

import java.util.List;

import model.Fans;
import service.FansDao;
import com.opensymphony.xwork2.ActionSupport;

public class fansAction extends ActionSupport {
	private List<Fans> fans;
	private List<Fans> mycons;
	private List<Fans> myfans;
	private FansDao fansdao = new FansDao(); 
	private Fans fan;
	private String ID;
	private String C_ID;
	private int num;
	


	public String list() {
		fans = fansdao.list();
		return SUCCESS;
	}
	public String myConcern() {
		mycons = fansdao.myConcern(ID);
		return SUCCESS;
	}
	public String add() {
		fansdao.add(fan);
		return SUCCESS;
	}
	
	public String delete() {
		fansdao.deleteById(num);
		return SUCCESS;
	}
	public String myFans() {
		myfans = fansdao.myFans(C_ID);
		return SUCCESS;
	}
	
	
	public List<Fans> getFans() {
		return fans;
	}
	public void setFans(List<Fans> fans) {
		this.fans = fans;
	}
	public List<Fans> getMycons() {
		return mycons;
	}
	public void setMycons(List<Fans> mycons) {
		this.mycons = mycons;
	}
	public List<Fans> getMyfans() {
		return myfans;
	}
	public void setMyfans(List<Fans> myfans) {
		this.myfans = myfans;
	}
	public Fans getFan() {
		return fan;
	}
	public void setFan(Fans fan) {
		this.fan = fan;
	}
	public String getID() {
		return ID;
	}
	public void setID(String ID) {
		this.ID = ID;
	}
	public String getC_ID() {
		return C_ID;
	}
	public void setC_ID(String C_ID) {
		this.C_ID = C_ID;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public FansDao getFansdao() {
		return fansdao;
	}
	public void setFansdao(FansDao fansdao) {
		this.fansdao = fansdao;
	}
	
   

}

