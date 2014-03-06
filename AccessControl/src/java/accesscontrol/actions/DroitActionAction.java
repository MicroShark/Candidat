/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accesscontrol.actions;

import accesscontrol.beans.DroitActionBean;
import accesscontrol.beans.DroitActionMgr;
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
public class DroitActionAction extends ActionAbstract {

    
    @Override
    public void afficher(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        DroitActionMgr mgr = new DroitActionMgr();
        String code = request.getParameter("code");
        
        DroitActionBean actionBean = mgr.getElementByPrimaryKey(code);        
        request.setAttribute("DroitActionBean", actionBean);
       
        DroitDomaineMgr domaineMgr = new DroitDomaineMgr();
        ArrayList<DroitDomaineBean> allDomaine = domaineMgr.getAllElements();
        request.setAttribute("DomaineBeanList", allDomaine);
        
    }

    @Override
    public void creer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        request.removeAttribute("DroitActionBean");
        request.setAttribute("DroitActionBean", new DroitActionBean());
        DroitDomaineMgr domaineMgr = new DroitDomaineMgr();
        ArrayList<DroitDomaineBean> allDomaine = domaineMgr.getAllElements();
        request.setAttribute("DomaineBeanList", allDomaine);
    
    }

    @Override
    public void supprimer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        DroitActionMgr mgr = new DroitActionMgr();
        mgr.removeElement((DroitActionBean) form);
    }

    @Override
    public void lister(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {

        HttpSession session = request.getSession();
        DroitActionMgr mgr = new DroitActionMgr();
        ArrayList<DroitActionBean> allDA = mgr.getAllElements();
        session.setAttribute("DroitAction", allDA);

    }

    @Override
    public void modifier(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        this.afficher(mapping, form, request, response);
    }

    @Override
    public boolean sauver(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {

        boolean returnValue = false;
        
        DroitActionMgr actionMgr = new DroitActionMgr();        
        DroitActionBean actionBean = (DroitActionBean) form;
        
        DroitDomaineMgr domaineMgr = new DroitDomaineMgr();
        actionBean.setDomaine(domaineMgr.getElementByPrimaryKey(actionBean.getDomaineCode()));

        if (!actionBean.getCode().equals("") && !actionBean.getNom().equals("") && !actionBean.getDomaine().equals("") )  {
            actionMgr.saveElement((DroitActionBean) form);
            returnValue = true;
        }
        return returnValue;

    }

}
