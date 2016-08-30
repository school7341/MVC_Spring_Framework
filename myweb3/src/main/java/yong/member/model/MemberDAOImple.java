package yong.member.model;

import java.util.*;
import java.sql.*;

public class MemberDAOImple implements MemberDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;

	public int memberJoin(MemberDTO dto) {

		try {
			conn = yong.db.YongDB.getConn();
			String sql = "insert into jsp_member values (jsp_member_idx.nextval,?, ?, ?,?,?,sysdate)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getName());
			ps.setString(3, dto.getPwd());
			ps.setString(4, dto.getEmail());
			ps.setString(5, dto.getTel());
			int count = ps.executeUpdate();
			return count;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
			}
		}
	}

	public int loginCheck(String userid, String userpwd) {

		try {
			conn = yong.db.YongDB.getConn();
			String sql = "select pwd from jsp_member where id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs = ps.executeQuery();
			if (rs.next()) {
				String dbpwd = rs.getString(1);
				if (dbpwd.equals(userpwd)) {
					return 3;
				} else {
					return 2;
				}
			} else {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
			}
		}
	}

	public String getUserInfo(String userid) {

		try {
			conn = yong.db.YongDB.getConn();
			String sql = "select name from jsp_member where id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs = ps.executeQuery();
			rs.next();
			return rs.getString(1);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
			}
		}
	}

}
