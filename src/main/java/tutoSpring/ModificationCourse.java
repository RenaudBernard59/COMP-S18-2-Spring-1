package tutoSpring;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

public class ModificationCourse {
	private Integer id;
	private String libelle;
	@NotEmpty(message="{modification.course.quantite.notempty}")
	@Pattern(regexp="\\d*", message="{modification.course.quantite.numerique}")
	private String quantite;
	public Integer getId() {return id;}
	public void setId(final Integer pId) {id=pId;}
	public String getLibelle() {return libelle;}
	public void setLibelle(final String pLielle) {libelle=pLielle;}
	public String getQuantite() {return quantite;}
	public void setQuantite(final String pQuantite) {quantite=pQuantite;}
}
