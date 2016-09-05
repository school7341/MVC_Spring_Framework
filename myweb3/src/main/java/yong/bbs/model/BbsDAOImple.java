package yong.bbs.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import yong.emp.model.EmpDTO;

public class BbsDAOImple implements BbsDAO {
	
	private SqlSessionTemplate sqlMap;
	

	public BbsDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public int bbsWrite(BbsDTO dto) {
		int result=sqlMap.insert("bbsWrite",dto);
		return result;
	}

	public List<BbsDTO> bbsList(int cp, int ls) {
		int startnum=(cp-1)*ls+1;
		int endnum=cp*ls;
		Map map=new HashMap();
		map.put("startnum", startnum);
		map.put("endnum", endnum);
		List<BbsDTO > list=sqlMap.selectList("bbsAllList", map);
		return list;
	}

	public int getTotalCnt() {
		return sqlMap.selectOne("totalCnt");
	}

}
