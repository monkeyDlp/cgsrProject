package org.project.controller;

import java.util.List;

import javax.annotation.Resource;

import org.project.pojo.Faultindicator;
import org.project.service.user.FaultindicatorService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class FaultindicatorController {
	
	@Resource
	private FaultindicatorService faultindicatorService;
	
	@RequestMapping(value="faultindicator_list")
	public ModelAndView faultindicator(Faultindicator faultindicator){
		List<Faultindicator> faultindicatorList = faultindicatorService.getFaultindicatorList();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("faultindicator_list");
		mav.addObject("faultindicator", faultindicatorList);
		return mav;
	}
}
