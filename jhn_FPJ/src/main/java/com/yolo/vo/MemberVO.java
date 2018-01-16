package com.yolo.vo;

import java.sql.Date;

public class MemberVO {
	private String id; 
	private String password; 
	private String sex; 
	private String calender; 
	private String year;
	private String month; 
	private String day; 
	private String addressnum; 
	private String address1;
	private String address2; 
	private String email_id; 
	private String email_site; 
	private String phone1;
	private String phone2;
	private String phone3;
	private String pertype;
	private String interestLandTotal; 
	private String[] tripStyle;
	private String incTripno; 
	private String outcTripno;
	private String user_image;
	private Date birth;
	private String phone;
	private String email;
	private String tripStyleList;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getCalender() {
		return calender;
	}

	public void setCalender(String calender) {
		this.calender = calender;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}
	
	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getAddressnum() {
		return addressnum;
	}

	public void setAddressnum(String addressnum) {
		this.addressnum = addressnum;
	}
	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getEmail_site() {
		return email_site;
	}

	public void setEmail_site(String email_site) {
		this.email_site = email_site;
	}
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getPhone3() {
		return phone3;
	}

	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPertype() {
		return pertype;
	}

	public void setPertype(String pertype) {
		this.pertype = pertype;
	}
	public String getInterestLandTotal() {
		return interestLandTotal;
	}

	public void setInterestLandTotal(String interestLandTotal) {
		this.interestLandTotal = interestLandTotal;
	}

	public String[] getTripStyle() {
		return tripStyle;
	}

	public void setTripStyle(String[] tripStyle) {
		this.tripStyle = tripStyle;
	}

	public void setTripStyleList(String tripStyleList) {
		this.tripStyleList = tripStyleList;
	}
	public String getTripStyleList() {
		return tripStyleList;
	}

	public String getIncTripno() {
		return incTripno;
	}

	public void setIncTripno(String incTripno) {
		this.incTripno = incTripno;
	}

	public String getOutcTripno() {
		return outcTripno;
	}

	public void setOutcTripno(String outcTripno) {
		this.outcTripno = outcTripno;
	}

	public String getUser_image() {
		return user_image;
	}

	public void setUser_image(String user_image) {
		this.user_image = user_image;
	}
}
