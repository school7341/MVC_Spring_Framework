package yong.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import yong.member.model.MemberDAO;
import yong.member.model.MemberDTO;

@Controller
public class MemberController {

	@Autowired
	private MemberDAO memberDao;

	@RequestMapping(value = "join.do", method = RequestMethod.GET)
	public ModelAndView joinForm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/join");
		return mav;
	}

	@RequestMapping(value = "join.do", method = RequestMethod.POST)
	public ModelAndView joinSubmit(MemberDTO dto) {
		int result = memberDao.memberJoin(dto);
		String msg = result > 0 ? "회원가입성공" : "회원가입실패";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("member/memberMsg");
		return mav;
	}

	@RequestMapping("/loginForm.do")
	public ModelAndView loginForm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/login");
		return mav;
	}

	@RequestMapping("/idCheckForm.do")
	public ModelAndView idCheckForm(@RequestParam("userid")String userid) {
			boolean result=memberDao.idCheck(userid);
			String msg=result?"[이미 가입된 ID입니다.]":"[사용가능한 ID입니다.]";
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("member/idCheck");
		return mav;
	}

	@RequestMapping("/login.do")
	public ModelAndView loginCheck(@RequestParam("userid") String userid, @RequestParam("userpwd") String userpwd,
			HttpSession session) {
		int result = memberDao.loginCheck(userid, userpwd);
		ModelAndView mav = new ModelAndView();
		{
			if (result == 1) {
				mav.addObject("msg", "등록된 아이디가 아닙니다.");
				mav.addObject("status", false);
			} else if (result == 2) {
				mav.addObject("msg", "비밀번호가 틀립니다.");
				mav.addObject("status", false);
			} else if (result == 3) {
				String name = memberDao.getUserInfo(userid);
				mav.addObject("msg", name + "님 환영합니다.");
				mav.addObject("status", true);
				session.setAttribute("sid", userid);
				session.setAttribute("sname", name);
			}
			mav.setViewName("member/login_ok");
			return mav;
		}
	}
	@RequestMapping("/logout.do")
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/index.do";
		
	}
}
