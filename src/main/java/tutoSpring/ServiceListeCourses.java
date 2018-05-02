package tutoSpring;

import java.util.List;
import org.springframework.transaction.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ServiceListeCourses implements IServiceListeCourses {
	@Autowired
	private IListeCoursesDAO dao;
	
	@Transactional(readOnly=true)
	public List<Course> rechercherCourses() {
		return dao.rechercherCourses();
	}
	
	@Transactional
	public void creeCourse(final String pLibelle, final Integer pQuantite) {
		final Course lCourse = new Course();
		lCourse.setLibelle(pLibelle);
		lCourse.setQuantite(pQuantite);
		dao.creeCourse(lCourse);
	}
	
	@Transactional
	public void supprimerCourse(final Integer pIdCourse) {
		final Course lCourse = new Course();
		lCourse.setId(pIdCourse);
		dao.supprimerCourse(lCourse);
	}
}
