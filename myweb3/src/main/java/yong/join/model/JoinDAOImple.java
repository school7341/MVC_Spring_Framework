package yong.join.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import yong.join.model.JoinDTO;


public class JoinDAOImple implements JoinDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
public int createAccount(JoinDTO dto) {
		
		try{
			conn=yong.db.YongDB.getConn();
			String sql="insert into PMP_Employee_table values (PMP_Employee_table_idx.nextval,?, ?, ?,?,?,sysdate)";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, dto.getEmployee_no());
			ps.setString(2, dto.getGiven_names());
			ps.setString(3, dto.getSurname());
			ps.setString(4, dto.getDate_of_birth());
			ps.setString(5, dto.getSex());
			int count=ps.executeUpdate();
			return count;
		}catch(Exception e){
			e.printStackTrace();
			return -1;
		}finally {
			try{
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			}catch(Exception e2){}
		}
	}

}
