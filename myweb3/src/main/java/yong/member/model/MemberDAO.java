package yong.member.model;

public interface MemberDAO {

	public int memberJoin(MemberDTO dto);
	public int loginCheck(String userid,String userpwd);
	public String getUserInfo(String userid);
	public boolean idCheck(String userid);
}
