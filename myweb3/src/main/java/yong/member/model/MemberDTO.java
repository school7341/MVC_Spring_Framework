package yong.member.model;
import java.sql.*;

public class MemberDTO {

	private int idx;
	private String id;
	private String pwd;
	private String name;
	
	private String email;
	private String tel;
	private Date joindate;
	public MemberDTO() {
		super();
	}
	public MemberDTO(int idx, String id, String name,String pwd, String email, String tel, Date joindate) {
		super();
		this.idx = idx;
		this.id = id;
		
		this.name = name;
		this.pwd = pwd;
		this.email = email;
		this.tel = tel;
		this.joindate = joindate;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
}
