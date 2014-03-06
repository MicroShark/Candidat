/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import beans.PorteOuvBean;
import beans.PorteOuvMgr;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import util.ActionAbstract;

/**
 *
 * @author user
 */
public class PorteOuvAction extends ActionAbstract {

    
    @Override
    public void afficher(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        PorteOuvMgr pom = new PorteOuvMgr();
        String id = request.getParameter("id");
        if (id!="") {
            PorteOuvBean pob = pom.getElementByPrimaryKey(Integer.valueOf(id));
            session.setAttribute("PorteOuvBean", pob);
            }
       
    }

    @Override
    public void creer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        PorteOuvBean pob = new PorteOuvBean();
        session.setAttribute("PorteOuvBean", pob);    
    }

    @Override
    public void supprimer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        PorteOuvMgr pom = new PorteOuvMgr();
        pom.removeElement((PorteOuvBean) form);
    }

    @Override
    public void lister(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        PorteOuvMgr pom = new PorteOuvMgr();
        ArrayList<PorteOuvBean> pob = pom.getAllElements();
        request.setAttribute("POList", pob);

    }

    @Override
    public void modifier(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
    this.afficher(mapping, form, request, response);
    }

    @Override
    public boolean sauver(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        boolean returnValue = false;
        PorteOuvMgr pom = new PorteOuvMgr();
        PorteOuvBean pob = (PorteOuvBean) form;

        if (!pob.getDateTxt().equals("") && (!pob.getNom().equals(""))) {
            returnValue = true;
            pom.saveElement(pob);
        }
        return returnValue;

    }

}
