package yong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yong.insa.model.InsaDAO;
import yong.insa.model.InsaDTO;

@Controller
public class InsaController {
	
	@Autowired
	private InsaDAO insaDao;
	
	@RequestMapping("/insa.do")
	public String insaIndex(){
		return "insa/insa";
	}
	
	@RequestMapping("/insaAdd.do")
	public ModelAndView insaAdd(InsaDTO dto){
		int result=insaDao.insaAdd(dto);
		String msg=result>0?"Insert success":"Insert Fail";
		ModelAndView mav=new ModelAndView("insa/insaMsg","msg",msg);
		return mav;
		
	}
	@RequestMapping("/insaDel.do")
	public ModelAndView insaDel(InsaDTO dto){
		int result=insaDao.insaDel(dto);
		String msg=result>0?"Delete success":"Delete Fail";
		ModelAndView mav=new ModelAndView("insa/insaMsg","msg",msg);
		return mav;
	}
	@RequestMapping("/insaList.do")
	public ModelAndView insaList(){
		List<InsaDTO> list=insaDao.insaList();
		ModelAndView mav=new ModelAndView("insa/insaList","list",list);
		return mav;
	}
	@RequestMapping("/insaSearch.do")
	public ModelAndView insaSearch(String sabun){
		//name_s="%"+name_s+"%";
		//System.out.println(name_s);
		List<InsaDTO> list=insaDao.insaSearch(sabun);
		ModelAndView mav=new ModelAndView("insa/insaSearch","list",list);
		return mav;
	}
	@RequestMapping("/insaUpdate.do")
	public ModelAndView insaUpdate(InsaDTO dto){
		int result=insaDao.insaUpdate(dto);
		String msg=result>0?"Update success":"Update Fail";
		ModelAndView mav=new ModelAndView("insa/insaMsg","msg",msg);
		return mav;
	}
}
