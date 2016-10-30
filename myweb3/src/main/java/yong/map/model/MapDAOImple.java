package yong.map.model;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;

import yong.map.model.MapDTO;

public class MapDAOImple implements MapDAO {
	private SqlSessionTemplate sqlMap;
	
	public MapDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public List<MapDTO> mapList() {
		List<MapDTO > list=sqlMap.selectList("mapAllList");
		return list;
	}

}
