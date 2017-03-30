package org.project.controller;

import java.util.List;

import javax.annotation.Resource;

import org.project.pojo.YxData;
import org.project.service.user.YxDataService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class YxDataController {
	
	
	@Resource
	private YxDataService yxDataService;
	
	@RequestMapping(value="yxdata_list")
	public ModelAndView yxdata(YxData yxData){
		List<YxData> yxDataList = yxDataService.getYxDataList();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("yxdata_list");
		mav.addObject("yxdata", yxDataList);
		return mav;
	}
}
