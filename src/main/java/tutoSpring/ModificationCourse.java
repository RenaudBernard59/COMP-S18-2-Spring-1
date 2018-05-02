package tutoSpring;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

public class ModificationCourse {
	private Integer id;
	private String libelle;
	@NotEmpty(message="{modification.course.quantite.notempty}")
	@Pattern(refexp"\\d*", message="{modification.course.quantite.numerique}")
	private String quantite;
	public Integer getid() {return id;}
	public void setid(final Integer pId) {id=pId;}
	public Integer getLibelle() {return libelle;}
	public void setLibelle(final String pLielle) {libelle=pLielle;}
	public Integer getQuantite() {return quantite;}
	public void setQuantite(final String pQuantite) {quantite=pQuantite;}
}
