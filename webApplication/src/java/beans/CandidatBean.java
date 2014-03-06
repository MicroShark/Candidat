package beans;

import java.util.Date;
import org.apache.struts.action.ActionForm;

public class CandidatBean extends ActionForm{
    /* Propriétés du bean */

    private Integer id;
    private String nom;
    private String prenom;
    private Date datenaiss;
    private String cp;
    private String ville;
    private String adresse;
    private String telephone;
    private String email;
    private String niveau;
    private String spec;
    private Date datepo;
    private String civil;
    private String nat;

    public void setCivil(String civil1) {
        this.civil = civil1;
    }

    public String getCivil() {
        return civil;
    }        
     
    public void setNat(String nat1) {
        this.nat = nat1;
    }

    public String getNat() {
        return nat;
    }    

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getNom() {
        return nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setDatenaiss(Date datenaiss) {
        this.datenaiss = datenaiss;
    }

    public Date getDatenaiss() {
        return datenaiss;
    }

    public void setCp(String cp) {
        this.cp = cp;
    }

    public String getCp() {
        return cp;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public String getVille() {
        return ville;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getAdresse() {
        return adresse;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setNiveau(String niveau) {
        this.niveau = niveau;
    }

    public String getNiveau() {
        return niveau;
    }

    public void setSpec(String spec) {
        this.spec = spec;
    }

    public String getSpec() {
        return spec;
    }

    /**
     * @return the datepo
     */
    public Date getDatepo() {
        return datepo;
    }

    /**
     * @param datepo the datepo to set
     */
    public void setDatepo(Date datepo) {
        this.datepo = datepo;
    }

    /**
     * @return the id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Integer id) {
        this.id = id;
    }

}
