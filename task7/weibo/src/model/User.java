package model;

import java.util.Date;

public class User {
	private String ID;
	private String name;
	private String password;
	private String sex;
	private String age;
	private String jiguan;
	private Date time;
	private String kind;
	private int num;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getID(){
		return ID;
	}
	public void setID(String ID){
		this.ID=ID;
	}
	public Date getTime(){
		return time;
	}
	public void setTime(Date time){
		this.time=time;
	}
	public void setAge(String age){
		this.age=age;
	}
	public String getAge(){
		return age;
	}
	public String getName(){
		return name;
	}
	public void setName(String name){
		this.name=name;
	}
	public String getSex(){
		return sex;
	}
	public void setSex(String sex){
		this.sex=sex;
	}
	public String getPassword(){
		return password;
	}
	public  void setPassword(String password){
		this.password=password;
	}
	public String getJiguan(){
		return jiguan;
	}
	public void setJiguan(String jiguan){
		this.jiguan=jiguan;
	}
	public void setKind(String kind){
		this.kind=kind;
	}
	public String getKind(){
		return kind;
	}

}


