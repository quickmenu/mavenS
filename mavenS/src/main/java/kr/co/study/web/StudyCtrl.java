package kr.co.study.web;

import java.util.List;

import javax.annotation.Resource;

import kr.co.study.domain.StudyDto;
import kr.co.study.service.StudySvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/study")
@Controller(value = "studyCtrl")
public class StudyCtrl {
	
	@Resource(name = "studySvc")
	private StudySvc studySvc;
	
	@RequestMapping(value = "/list")
	public String list(ModelMap model) throws Exception {
		List<StudyDto> list = this.studySvc.getAll();
		model.addAttribute("list", list);
		
		return "work";
	}
}
