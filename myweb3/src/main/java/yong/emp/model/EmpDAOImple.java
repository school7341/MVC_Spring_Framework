package yong.emp.model;

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
}
