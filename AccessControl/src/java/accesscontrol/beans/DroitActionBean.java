/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accesscontrol.beans;

import org.apache.struts.action.ActionForm;

/**
 *
 * @author User
 */
public class DroitActionBean extends ActionForm {

    private String code;
    private String nom;
    private String domaineCode;
    private DroitDomaineBean domaine;

    /**
     * @return the code
     */
    public String getCode() {
        return code;
    }

    /**
     * @param code the code to set
     */
    public void setCode(String code) {
        this.code = code;
    }

    /**
     * @return the nom
     */
    public String getNom() {
        return nom;
    }

    /**
     * @param nom the nom to set
     */
    public void setNom(String nom) {
        this.nom = nom;
    }

    /**
     * @return the domaine
     */
    public DroitDomaineBean getDomaine() {
        return domaine;
    }

    /**
     * @param domaine the domaine to set
     */
    public void setDomaine(DroitDomaineBean domaine) {
        if (!domaine.getCode().equals(this.domaineCode)) {
            this.domaineCode = domaine.getCode();
        }
        this.domaine = domaine;
    }

    /**
     * @return the domaineCode
     */
    public String getDomaineCode() {
        if (domaineCode==null) {
            if (domaine!=null) {
                domaineCode = domaine.getCode();
            }
        }
        return domaineCode;
    }

    /**
     * @param DomaineCode the domaineCode to set
     */
    public void setDomaineCode(String DomaineCode) {
        if (domaine!=null) {
            if (!domaine.getCode().equals(DomaineCode)) {
                this.domaine = null;
            }
        }
        this.domaineCode = DomaineCode;
    }

}
