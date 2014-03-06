/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
// Getter Setter
//clic droit  Refactor    Encapsulate Fields   cocher les cases et le codes est généré
package beans;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.struts.action.ActionForm;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author user
 */
public class SalonBean extends ActionForm{

    private Integer id;
    private String nom;
    private String lieu;
    private Date datedeb;
    public String dateDebTxt;
    private Date datefin;
    public String dateFinTxt;
    private Date date;

    /**
     * @return the id
     */
    public Integer getId() {
        return id;
    }
    
     public void setId(Integer id) {
        this.id =  id;
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
     * @return the lieu
     */
    public String getLieu() {
        return lieu;
    }

    /**
     * @param lieuSalon the lieu to set
     */
    public void setLieu(String lieuSalon) {
        this.lieu = lieuSalon;
    }

    /**
     * @return the datedeb
     */
    public Date getDatedeb() {
        return datedeb;
    }

    /**
     * @param datedeb the datedeb to set
     */
    public void setDatedeb(Date datedeb) {
        this.datedeb = datedeb;
    }

    /**
     * @return the datefin
     */
    public Date getDatefin() {
        return datefin;
    }

    /**
     * @param datefin the datefin to set
     */
    public void setDatefin(Date datefin) {
        this.datefin = datefin;
    }
    
    public String getDateDebTxt() {
        if (datedeb==null) {
            return "";
        } else {
            SimpleDateFormat dtFormat = new SimpleDateFormat("dd/MM/yyyy");
            return dtFormat.format(datedeb);
        }
    }
        
     public String getDateFinTxt() {
        if (datefin==null) {
            return "";
        } else {
            SimpleDateFormat dtFormat = new SimpleDateFormat("dd/MM/yyyy");
            return dtFormat.format(datefin);
        }   

}
     
     public void setDateFinTxt(String DateFinTxt) {
        try {
            this.dateFinTxt = dateFinTxt;
            SimpleDateFormat dtFormat = new SimpleDateFormat("dd/MM/yyyy");
            date = dtFormat.parse(dateFinTxt);
        } catch (ParseException ex) {
            Logger.getLogger(SalonBean.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     
     public void setDateDebTxt(String dateDebTxt) {
        try {
            this.dateDebTxt = dateDebTxt;
            SimpleDateFormat dtFormat = new SimpleDateFormat("dd/MM/yyyy");
            date = dtFormat.parse(dateDebTxt);
        } catch (ParseException ex) {
            Logger.getLogger(SalonBean.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     
}

