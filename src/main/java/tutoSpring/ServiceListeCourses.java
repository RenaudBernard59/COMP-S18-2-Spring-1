package tutoSpring;

import java.util.List;

import org.springframework.transaction.annotation.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ServiceListeCourses {
	@Autowired
	private IListeCoursesDAO dao;
	
	@Transactional(readOnly=true)
	public List<Course> rechercherCourses() {
		return dao.rechercherCourses();
	}
}
