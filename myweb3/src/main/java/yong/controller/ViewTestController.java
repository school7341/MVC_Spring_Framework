package yong.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewTestController {

	@RequestMapping("/viewTest1.do")
	public ModelAndView viewTest1(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("view/viewTestOk");
		return mav;
	}
	@RequestMapping("/viewTest2.do")
	public String viewTest2(){
		return "view/viewTestOk";
	}
	
	@RequestMapping("view/viewTestOk.do")
	public void viewTest3(){
		
	}
	@RequestMapping("/viewTest3.do")
	public String viewTest4(){
		return "redirect:/hello.do";
	}
	@RequestMapping("/modelTest1.do")
	public String modelTest1(Map map){
		map.put("msg", "Map객체를 이용한 데이터 전달!");
		return "view/modelOk";
	}
	@RequestMapping("/modelTest2.do")
	public String modelTest2(Model model){
		model.addAttribute("msg", "Model객체를 이용한 데이터 전달!");
		return "view/modelOk";
	}
	@RequestMapping("/modelTest3.do")
	public String modelTest3(ModelMap mmap){
		mmap.addAttribute("msg", "ModelMap객체를 이용한 데이터 전달!");
		return "view/modelOk";
	}
	
	/*@RequestMapping("view/modelOk.do")
	public Map<String, Object> modelTest4(){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("msg", "Map객체를 반환한 데이터 전달!");
		return map;
	}*/
	@RequestMapping("view/modelOk.do")
	public Model modelTest5(){
		Model model=new ExtendedModelMap();
		model.addAttribute("msg", "Model객체를 반환한 데이터 전달!");
		return model;
	}
}
