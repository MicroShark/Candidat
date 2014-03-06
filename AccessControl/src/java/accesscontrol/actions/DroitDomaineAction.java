/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accesscontrol.actions;

import accesscontrol.beans.DroitDomaineBean;
import accesscontrol.beans.DroitDomaineMgr;
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
public class DroitDomaineAction extends ActionAbstract {

    
    @Override
    public void afficher(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        DroitDomaineMgr mgr = new DroitDomaineMgr();
        String code = request.getParameter("code");
        DroitDomaineBean actionBean = mgr.getElementByPrimaryKey(code);        
        request.setAttribute("DroitDomaineBean", actionBean);
    }

    @Override
    public void creer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        request.removeAttribute("DroitDomaineBean");
        request.setAttribute("DroitDomaineBean", new DroitDomaineBean());   
    }

    @Override
    public void supprimer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
 /*       DroitActionMgr mgr = new DroitActionMgr();
        mgr.removeElement((DroitActionBean) form);*/
    }

    @Override
    public void lister(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {

        HttpSession session = request.getSession();
        DroitDomaineMgr mgr = new DroitDomaineMgr();
        ArrayList<DroitDomaineBean> allDomaine = mgr.getAllElements();
        session.setAttribute("DroitDomaines", allDomaine);

    }

    @Override
    public void modifier(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        this.afficher(mapping, form, request, response);
    }

    @Override
    public boolean sauver(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {

        boolean returnValue = false;
       
        DroitDomaineMgr mgr = new DroitDomaineMgr();        
        DroitDomaineBean bean = (DroitDomaineBean) form;
        
        if (!bean.getCode().equals("") && !bean.getNom().equals("") )  {
            mgr.saveElement(bean);
            returnValue = true;
        }
        return returnValue;

    }

}
