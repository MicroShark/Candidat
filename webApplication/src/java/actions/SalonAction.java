/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import beans.SalonBean;
import beans.SalonMgr;
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
public class SalonAction extends ActionAbstract {

    @Override
    public void afficher(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        SalonMgr mgr = new SalonMgr();
        String id = request.getParameter("id");
        SalonBean bean = mgr.getElementByPrimaryKey(Integer.valueOf(id));
        request.setAttribute("SalonBean", bean);
    }

    @Override
    public boolean sauver(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        boolean returnValue = false;
        SalonMgr mgr = new SalonMgr();
        SalonBean bean = (SalonBean) form;

        if (!bean.getNom().equals("")) {
            returnValue = true;
            mgr.saveElement((SalonBean) form);
        }
        return returnValue;

    }

    @Override
    public void creer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        SalonBean bean = new SalonBean();
        session.setAttribute("SalonBean", bean);

        /*
    
         SalonBean mgr = new SalonBean();
         DateFormat format = DateFormat.getDateInstance(DateFormat.SHORT, Locale.FRANCE);
         String dt = request.getParameter("date");
         try {
         mgr.setDate(format.parse(dt));
         } catch (Exception e) {
         }
         request.setAttribute("nouveauCandidat", mgr);*/
    }

    @Override
    public void supprimer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        SalonMgr mgr = new SalonMgr();
        mgr.removeElement((SalonBean) form);
    }

    @Override
    public void lister(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        SalonMgr mgr = new SalonMgr();
        ArrayList<SalonBean> Salons = mgr.getAllElements();
        request.setAttribute("SalonList", Salons);
    }

    @Override
    public void modifier(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        this.afficher(mapping, form, request, response);
    }

}
