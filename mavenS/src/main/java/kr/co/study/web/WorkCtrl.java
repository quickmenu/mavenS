package kr.co.study.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "workController")
public class WorkCtrl {
	
	@RequestMapping(value = "/work")
	public String work(Model model) throws Exception {
		return "work";
	}

}
