package kr.co.study.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "helloController")
public class HelloCtrl {
	
	@RequestMapping(value = "/hello")
	public String hello(ModelMap model) throws Exception {
		return "hello";
	}
}
