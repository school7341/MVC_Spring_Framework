package yong.insa.model;
import java.util.*;

public interface InsaDAO {
	public int insaAdd(InsaDTO dto);
	public int insaDel(InsaDTO dto);
	public List<InsaDTO> insaList();
	public List<InsaDTO> insaSearch(String sabun);
	public int insaUpdate(InsaDTO dto);
}
