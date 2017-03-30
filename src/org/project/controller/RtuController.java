package org.project.controller;

import java.util.List;

import javax.annotation.Resource;

import org.project.pojo.Rtu;
import org.project.service.user.RtuService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class RtuController {

	@Resource 
	private RtuService rtuService;
	
	@RequestMapping(value="rtu_list")
	public ModelAndView rtu(Rtu rtu){
		List<Rtu> rtuList = rtuService.getRtuList();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("rtu_list");
		mav.addObject("rtu",rtuList);
		return mav;
	}

}
