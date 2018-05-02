package tutoSpring;

import java.util.List;

public interface IServiceListeCourses {
	List<Course> rechercherCourses();
	void creeCourse(final String pLibelle, final Integer pQuantite);
}

