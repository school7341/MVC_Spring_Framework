package yong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AnimeController {
	
	@ModelAttribute("keyword")
	public String[] getKeyword(){
		String keyword[]={"심슨","뽀로로","코코몽","도라에몽","세일러문"};
		return keyword;
	}
	@ModelAttribute("category")
	public String[] getCategory(){
		String category[]={"한국","일본","미국"};
		return category;
	}
	
	@RequestMapping("/animeForm.do")
	public ModelAndView anumeForm(){
		ModelAndView mav=new ModelAndView();
/*		String keyword[]={"심슨","뽀로로","코코몽","도라에몽","세일러문"};
		String category[]={"한국","일본","미국"};
		mav.addObject("keyword", getKeyword());
		mav.addObject("category", getCategory());*/
		mav.setViewName("anime/animeForm");
		return mav;
	}
	@RequestMapping("/animeFind.do")
	public ModelAndView animeFind(){
		
		ModelAndView mav=new ModelAndView();
		
/*		String keyword[]={"심슨","뽀로로","코코몽","도라에몽","세일러문"};
		String category[]={"한국","일본","미국"};
		mav.addObject("keyword", getKeyword());
		mav.addObject("category", getCategory());*/
		mav.setViewName("anime/animeFind");
		
		return mav;
	}
}
