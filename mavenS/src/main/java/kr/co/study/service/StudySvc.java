package kr.co.study.service;

import java.util.List;

import javax.annotation.Resource;

import kr.co.study.domain.StudyDto;
import kr.co.study.service.impl.StudyMapper;

import org.springframework.stereotype.Service;

@Service(value = "studySvc")
public class StudySvc {
	
	@Resource(name = "studyMapper")
	private StudyMapper studyMapper;
	
	public List<StudyDto> getAll() {
		return this.studyMapper.getAll();
	}
	
	public StudyDto get(int studyNo) {
		return this.studyMapper.get(studyNo);
	}
	
	public void add(StudyDto studyDto) {
		this.studyMapper.add(studyDto);
	}
	
	public void update(StudyDto studyDto) {
		this.studyMapper.update(studyDto);
	}
	
	public void delete(int studyNo) {
		this.studyMapper.delete(studyNo);
	}
}
