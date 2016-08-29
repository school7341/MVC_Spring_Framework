package yong.join.model;
import java.sql.*;

public class JoinDTO {
private int idx;
private int employee_no;
private String given_names;
private String surname;
private String date_of_birth;
private String sex;
private Date date_of_issue;
public JoinDTO() {
	super();
}
public JoinDTO(int idx, int employee_no, String given_names, String surname, String date_of_birth, String sex,
		Date date_of_issue) {
	super();
	this.idx = idx;
	this.employee_no = employee_no;
	this.given_names = given_names;
	this.surname = surname;
	this.date_of_birth = date_of_birth;
	this.sex = sex;
	this.date_of_issue = date_of_issue;
}
public int getIdx() {
	return idx;
}
public void setIdx(int idx) {
	this.idx = idx;
}
public int getEmployee_no() {
	return employee_no;
}
public void setEmployee_no(int employee_no) {
	this.employee_no = employee_no;
}
public String getGiven_names() {
	return given_names;
}
public void setGiven_names(String given_names) {
	this.given_names = given_names;
}
public String getSurname() {
	return surname;
}
public void setSurname(String surname) {
	this.surname = surname;
}
public String getDate_of_birth() {
	return date_of_birth;
}
public void setDate_of_birth(String date_of_birth) {
	this.date_of_birth = date_of_birth;
}
public String getSex() {
	return sex;
}
public void setSex(String sex) {
	this.sex = sex;
}
public Date getDate_of_issue() {
	return date_of_issue;
}
public void setDate_of_issue(Date date_of_issue) {
	this.date_of_issue = date_of_issue;
}

}
