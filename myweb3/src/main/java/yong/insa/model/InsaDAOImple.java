package yong.insa.model;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;

import yong.insa.model.InsaDTO;

public class InsaDAOImple implements InsaDAO {

	private SqlSessionTemplate sqlMap;
	
	public int insaAdd(InsaDTO dto) {
		int count=sqlMap.insert("insaInsert",dto);
		return count;
	}

	public int insaDel(InsaDTO dto) {
		int count=sqlMap.insert("insaDelete",dto);
		return count;
	}

	public List<InsaDTO> insaList() {
		List<InsaDTO > list=sqlMap.selectList("insaAllList");
		return list;
	}

	public List<InsaDTO> insaSearch(String sabun) {
		List<InsaDTO > list=sqlMap.selectList("insaSearch",sabun);
		return list;
	}

	public int insaUpdate(InsaDTO dto) {
		int count=sqlMap.insert("insaUpdate",dto);
		return count;
	}

}
