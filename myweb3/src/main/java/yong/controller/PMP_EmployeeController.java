package yong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import yong.join.model.JoinDAO;
import yong.join.model.JoinDTO;
import yong.memo.model.MemoDAO;

@Controller
@RequestMapping("/joinForm.do")
public class PMP_EmployeeController {
	@Autowired
	private JoinDAO joinDAO;
	public JoinDAO getJoinDao() {
		return joinDAO;
	}
	public void setJoinDao(JoinDAO joinDAO) {
		this.joinDAO = joinDAO;
	}
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView joinForm(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("PMP/joinForm");
		return mav;
	}
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView joinSubmit(@ModelAttribute("jd")JoinDTO dto){
		
		int result=joinDAO.createAccount(dto);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("PMP/joinOk");
		return mav;
	}
}
