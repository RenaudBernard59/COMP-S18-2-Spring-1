package tutoSpring;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CreerListeCoursesController {
	@Autowired
	private IServiceListeCourses serviceListeCourses;
	@RequestMapping(value="/affichercreationListeCourses", method = RequestMethod.GET)
	public String afficher(final ModelMap pModel) {
		final List<Course> IListeCourses = service.rechercherCourses();
		pModel.addAllAttributes("listeCourses", IListeCourses);
		if (pModel.get("creation") == null) {
			pModel.addAllAttributes("creation", new CreationForm());
		}
		return "creation";
	}
	@RequestMapping(value="/vreerCreationListeCourses", method = RequesMethod.POST)
	public String creer(@Valid @ModelAttribute(value="creation") final CreationForm pCreation, final BindingResult pBindingResult, final ModelMap pModel) {
		if (!pBindingResult.hasErrors()) {
			final Integer lIntQuatite = Integer.valueOf(pCreation.getQuantite());
			serviceListeCourses.creeCourse(pCreation.getLibelle(), iIntQuantite);
		}
		return afficher(pModel);
	}
}
