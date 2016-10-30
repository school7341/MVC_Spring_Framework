package yong.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import yong.bbs.model.BbsDAO;
import yong.bbs.model.BbsDTO;




@Controller
public class BbsController {

	@Autowired
	private BbsDAO bbsDao;
	
	@RequestMapping("/bbsList.do")
	public ModelAndView bbsList(
			@RequestParam(value="cp",defaultValue="1")int cp){
		int totalCnt=bbsDao.getTotalCnt();
		int listSize=10;
		int pageSize=5;
		List<BbsDTO> list=bbsDao.bbsList(cp, listSize);
		String pageStr=yong.page.YongPageModuel.makePage(totalCnt, listSize, pageSize, cp, "bbsList.do");
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pageStr", pageStr);
		mav.setViewName("bbs/bbsList");
		return mav;
	}
	@RequestMapping(value="/bbsWrite.do", method=RequestMethod.GET)
	public String bbsWriteForm(){
		
		return "bbs/bbsWrite";
		
	}
	@RequestMapping(value="/bbsWrite.do", method=RequestMethod.POST)
	public ModelAndView bbsWrite(BbsDTO dto){
		int result=bbsDao.bbsWrite(dto);
		String msg=result>0?"등록성공":"등록실패";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("bbs/bbsMsg");
		return mav;
	}
}
