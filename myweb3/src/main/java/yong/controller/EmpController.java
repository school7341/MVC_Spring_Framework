package yong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yong.emp.model.EmpDAO;
import yong.emp.model.EmpDTO;

@Controller
public class EmpController {
	
	@Autowired
	private EmpDAO empDao;
	
	@RequestMapping("/emp.do")
	public String empIndex(){
		return "emp/emp";
	}
	
	@RequestMapping("/empAdd.do")
	public ModelAndView empAdd(EmpDTO dto){
		int result=empDao.empAdd(dto);
		String msg=result>0?"Insert success":"Insert Fail";
		ModelAndView mav=new ModelAndView("emp/empMsg","msg",msg);
		return mav;
		
	}
	@RequestMapping("/empDel.do")
	public ModelAndView empDel(EmpDTO dto){
		int result=empDao.empDel(dto);
		String msg=result>0?"Delete success":"Delete Fail";
		ModelAndView mav=new ModelAndView("emp/empMsg","msg",msg);
		return mav;
	}
	@RequestMapping("/empList.do")
	public ModelAndView empList(){
		List<EmpDTO> list=empDao.empList();
		ModelAndView mav=new ModelAndView("emp/empList","list",list);
		return mav;
	}
	@RequestMapping("/empSearch.do")
	public ModelAndView empSearch(EmpDTO dto){
		List<EmpDTO> list=empDao.empSearch(dto);
		ModelAndView mav=new ModelAndView("emp/empSearch","list",list);
		return mav;
	}
	@RequestMapping("/empUpdate.do")
	public ModelAndView empUpdate(EmpDTO dto){
		List<EmpDTO> list=empDao.empSearch(dto);
		int result=empDao.empUpdate(dto);
		String msg=result>0?"Update success":"Update Fail";
		ModelAndView mav=new ModelAndView("emp/empMsg","msg",msg);
		return mav;
	}
}
