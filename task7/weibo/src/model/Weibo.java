package model;
import java.sql.Date;

public class Weibo {
    private int num;
	
	private String ID;
	private Date time;
	private String content;
	private String comments;
	public String getID(){
		return ID;
	}
	public void setID(String ID){
		this.ID=ID;
	}
	
	public void setContent(String content){
		this.content=content;
	}
	public String getContent(){
		return content;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
}
