package kr.co.study.service;

import java.util.List;

import javax.annotation.Resource;

import kr.co.study.domain.StudyDto;
import kr.co.study.service.impl.StudyMapper;

import org.springframework.stereotype.Service;

@Service(value = "studySvc")
public class StudySvc {
	@Resource(name = "studySvcImpl")
	private StudyMapper studySvcImpl;
	
	public List<StudyDto> getAll() {
		return this.studySvcImpl.getAll();
	}
	
	public StudyDto get(int studyNo) {
		return this.studySvcImpl.get(studyNo);
	}
	
	public void add(StudyDto studyDto) {
		this.studySvcImpl.add(studyDto);
	}
	
	public void update(StudyDto studyDto) {
		this.studySvcImpl.update(studyDto);
	}
	
	public void delete(int studyNo) {
		this.studySvcImpl.delete(studyNo);
	}
}
