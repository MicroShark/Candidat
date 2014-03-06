/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.struts.action.ActionForm;

/**
 *
 * @author user
 */
public class PorteOuvBean extends ActionForm {

    private Integer id;
    private String nom;
    private Date date;
    private String dateTxt;

    public PorteOuvBean() {
    }

    /**
     * @return the ID
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

    /**
     * @return the date
     */
    public Date getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(Date date) {
        this.date = date;
    }
    
    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDateTxt() {
        if (date==null) {
            return "";
        } else {
            SimpleDateFormat dtFormat = new SimpleDateFormat("dd/MM/yyyy");
            return dtFormat.format(date);
        }
        
    }

    public void setDateTxt(String dateTxt) {
        try {
            this.dateTxt = dateTxt;
            SimpleDateFormat dtFormat = new SimpleDateFormat("dd/MM/yyyy");
            date = dtFormat.parse(dateTxt);
        } catch (ParseException ex) {
            Logger.getLogger(PorteOuvBean.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
