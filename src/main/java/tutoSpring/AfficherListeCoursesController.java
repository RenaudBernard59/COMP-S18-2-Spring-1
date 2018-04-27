package tutoSpring;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/afficherCourses")
public class AfficherListeCoursesController {
	@Autowired
	private IServiceListeCourses service;
	@RequestMapping(method=RequestMethod.GET)
	public String afficher(ModelMap pModel) {
		final List<Course> IListeCourses = service.rechercherCourses();
		pModel.addAttribute("listeCourses", IListeCourses);
		return "listeCourses";
	}
}
