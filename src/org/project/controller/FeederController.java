package org.project.controller;

import java.util.List;

import javax.annotation.Resource;

import org.project.pojo.Feeder;
import org.project.service.user.FeederService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class FeederController {
	
	
	
	@Resource
	private FeederService feederService;
	
	@RequestMapping(value="/feeder_list")
	public ModelAndView index(Feeder feeder){
		List<Feeder> feederList = feederService.getFeederList();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("feeder_list");
		mav.addObject("feeder",feederList);
		return mav;
	}

}
