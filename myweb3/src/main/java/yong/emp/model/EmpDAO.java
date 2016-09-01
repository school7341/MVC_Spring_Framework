package yong.emp.model;
import java.util.*;;

public interface EmpDAO {
	public int empAdd(EmpDTO dto);
	public int empDel(EmpDTO dto);
	public List<EmpDTO> empList();
	public List<EmpDTO> empSearch(EmpDTO dto);
	public int empUpdate(EmpDTO dto);
}