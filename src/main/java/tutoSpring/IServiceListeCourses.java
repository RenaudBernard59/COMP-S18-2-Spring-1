package tutoSpring;

import java.util.List;

public interface IServiceListeCourses {
	List<Course> rechercherCourses();
	void creeCourse(final Course pLibelle, final Integer pQuantite);
}

