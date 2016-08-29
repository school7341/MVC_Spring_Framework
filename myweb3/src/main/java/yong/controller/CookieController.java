package yong.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CookieController {
	
	@RequestMapping("/cookieView.do")
	public ModelAndView cookieView(
			@CookieValue(value="saveId",required=false, defaultValue="No ID")String saveId){
		System.out.println("SaveId : "+saveId);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cookie/cookieOk");
		return mav;
	}
	@RequestMapping("/cookieMake.do")
	public ModelAndView cookieMake(HttpServletResponse res){
		Cookie ck = new Cookie("saveId", "hong");
		ck.setMaxAge(60*60*24);
		res.addCookie(ck);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cookie/cookieOk");
		return mav;
	}
	@RequestMapping("/sessionMake.do")
	public ModelAndView sessionMake(HttpSession session){
		session.setAttribute("id","dool");
		session.setAttribute("name","dooli");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cookie/cookieOk");
		return mav;
	}
	@RequestMapping("/sessionView.do")
	public ModelAndView sessionView(HttpServletRequest req){
		HttpSession session=req.getSession();
		String id=(String)session.getAttribute("id");
		String name=(String)session.getAttribute("name");
		System.out.println("id:"+id+"/name:"+name);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cookie/cookieOk");
		return mav;
	}
}
