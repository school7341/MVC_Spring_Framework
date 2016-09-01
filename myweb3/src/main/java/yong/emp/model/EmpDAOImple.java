package yong.emp.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class EmpDAOImple implements EmpDAO {
	
	
	private SqlSessionTemplate sqlMap;
	
	
	public EmpDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}


	public int empAdd(EmpDTO dto) {
		int count=sqlMap.insert("empInsert",dto);
		return count;
	}
	public int empDel(EmpDTO dto) {
		int count=sqlMap.insert("empDelete",dto);
		return count;
	}
	public List<EmpDTO> empList() {
		List<EmpDTO > list=sqlMap.selectList("empAllList");
		
		return list;
	}
	public List<EmpDTO> empSearch(String name_s) {
		List<EmpDTO > list=sqlMap.selectList("empSearch",name_s);
		return list;
	}
	public int empUpdate(EmpDTO dto) {
		int count=sqlMap.insert("empUpdate",dto);
		return count;
	}
}
