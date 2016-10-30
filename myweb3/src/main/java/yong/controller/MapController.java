package yong.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import yong.map.model.MapDTO;
import yong.map.model.MapDAO;
@Controller
public class MapController {
	@Autowired
	private MapDAO mapDao;
	
	@RequestMapping("/mapList.do")
	public ModelAndView mapList(){
		List<MapDTO> list=mapDao.mapList();
		int len=list.size();
		ModelAndView mav=new ModelAndView("map/mapList","list",list);
		mav.addObject("len", len);
		return mav;
	}
}
