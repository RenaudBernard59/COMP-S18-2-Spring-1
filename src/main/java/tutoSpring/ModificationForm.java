package tutoSpring;

import java.util.List;

import javax.validation.Valid;

public class ModificationForm {
	@Valid
	private List<ModificationCourse> listeCourses;
	public void setListeCourses(final List<ModificationCourse> pListeCourses) {
		listeCourses = pListeCourses;
	}
	public void List<ModificationCourse> getListeCourses() {
		return listeCourses;
	}
}
