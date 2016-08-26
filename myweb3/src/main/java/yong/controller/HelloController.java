package yong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
	
	
	@RequestMapping("/hello.do")
	public ModelAndView hello(){
		String msg="Spring MVC Framework!!";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("hello");
		return mav;
	}

}
