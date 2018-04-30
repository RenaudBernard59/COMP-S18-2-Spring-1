package tutoSpring;

import java.util.List;

public interface IListeCoursesDAO {
	List<Course> rechercherCourses();
	void creeCourse(final Course pCourse);
}
