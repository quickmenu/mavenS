package kr.co.study.service.impl;

import java.util.List;
import kr.co.study.domain.StudyDto;
import org.springframework.stereotype.Repository;

@Repository(value = "studySvcImpl")
public interface StudyMapper {
	List<StudyDto> getAll();
	
	StudyDto get(int studyNo);
	
	void add(StudyDto studyDto);
	
	void update(StudyDto studyDto);
	
	void delete(int studyDto);
}
