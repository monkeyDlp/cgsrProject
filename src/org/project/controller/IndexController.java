package org.project.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.project.pojo.User;
import org.project.service.user.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller //类似Struts的Action
public class IndexController {
	private Logger loger = Logger.getLogger(IndexController.class);
	@Resource
	private UserService userService;
	
	@RequestMapping("/SvgPic.html")
	public String SvgPic(){
		return "SvgPic";
	}
	@RequestMapping("/welcome.html")
	public String welcom(){
		return "welcome";
	}
	
	@RequestMapping("/index.html")  // 请求url地址映射，类似Struts的action-mapping
    public String index() {
		loger.debug("IndexController index.userService:" +userService );
        return "index";
    }
	@RequestMapping("/register.html")
	public String register(){
		return "register";
	}
	@RequestMapping("/exit.html")//请求url地址映射，类似Struts的action-mapping
    public String exit(){
		loger.debug("IndexController exit.");
        return "exit";
    }
	@RequestMapping("/login.html")
	public String login(){
		return "login";
	}
	@RequestMapping("/test.html")
	public String test(){
		return "loginsuccess";
	}
	@RequestMapping("/loginsuccess.html")  // 请求url地址映射，类似Struts的action-mapping
    public ModelAndView loginsuccess(User user) {
		loger.debug("IndexController login.username : " + user.getUserName()
				
				+ " --- password:"+user.getPassword());
		
		user = userService.getUser(user);
			if(user==null){
				return new ModelAndView("login") ;
			}else{
				loger.debug("select username :" + user.getUserName()
						+ " --- password:"+user.getPassword());
			}
				
		return new ModelAndView("easyuiShow");
        
    }	

	@RequestMapping("/regsuccess.html")
	public ModelAndView regsuccess(User user){
		 loger.debug("IndexController register.username : " + user.getUserName()
				 + "---- password: " + user.getPassword());
		  int f = userService.insertUser(user);
		  if(f > 0){
			   user = userService.getUser(user);
		  }
		  return new ModelAndView("regsuccess");
	}
	
	@RequestMapping("/easyui.html")  // 请求url地址映射，类似Struts的action-mapping
    public String easyui() {
		loger.debug("IndexController index.userService:" +userService );
        return "easyuiShow";
    }
}
