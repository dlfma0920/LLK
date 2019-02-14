package com.llk.pro.vo;

public class EmployerVO {
	private String id;
	@Override
	public String toString() {
		return "EmployerVO [id=" + id + ", pwd=" + pwd + ", name=" + name + ", birth=" + birth + ", sex=" + sex
				+ ", email=" + email + ", phone=" + phone + ", country=" + country + ", Flag=" + Flag + ", getFlag()="
				+ getFlag() + ", getId()=" + getId() + ", getPwd()=" + getPwd() + ", getName()=" + getName()
				+ ", getBirth()=" + getBirth() + ", getSex()=" + getSex() + ", getEmail()=" + getEmail()
				+ ", getPhone()=" + getPhone() + ", getCountry()=" + getCountry() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	private String pwd;
	private String name;
	private int birth;
	private int sex;
	private String email;
	private int phone;
	private String country;
	private int Flag;
	public int getFlag() {
		return Flag;
	}
	public void setFlag(int flag) {
		Flag = flag;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getBirth() {
		return birth;
	}
	public void setBirth(int birth) {
		this.birth = birth;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
}
