package yong.bbs.model;
import java.util.*;

public interface BbsDAO {
	public int bbsWrite(BbsDTO dto);
	public int getTotalCnt();
	public List<BbsDTO> bbsList(int cp,int ls);
}
