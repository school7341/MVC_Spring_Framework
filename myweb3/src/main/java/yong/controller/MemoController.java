package yong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import yong.memo.model.MemoDAO;
import yong.memo.model.MemoDTO;

@Controller
@RequestMapping("/memoWrite.do")
public class MemoController {
	@Autowired
	private MemoDAO memoDao;
	
	
	public MemoDAO getMemoDao() {
		return memoDao;
	}
	public void setMemoDao(MemoDAO memoDao) {
		this.memoDao = memoDao;
	}
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView form(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("memo/memoWriteForm");
		return mav;
		
	}
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView submit(@ModelAttribute("cmd")MemoDTO dto){
		System.out.println(dto.toString());
		int result=memoDao.memoWrite(dto);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("memo/memoOk");
		return mav;
	}
}
