package org.project.controller;

import java.util.List;

import javax.annotation.Resource;

import org.project.pojo.YcData;
import org.project.service.user.YcDataService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class YcDataController {
	
	
	@Resource
	private YcDataService ycDataService;
	
	@RequestMapping(value="ycdata_list")
	public ModelAndView ycdata(YcData ycData){
		List<YcData> ycDataList = ycDataService.getYcDataList();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ycdata_list");
		mav.addObject("ycdata", ycDataList);
		return mav;
	}
}
