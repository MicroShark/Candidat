/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import beans.INSEEBean;
import beans.INSEEMgr;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import util.ActionAbstract;

/**
 *
 * @author User
 */
public class INSEEAction extends ActionAbstract {

    @Override
    public void afficher(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        INSEEMgr mgr = new INSEEMgr();
        String id = request.getParameter("id");
        if (!id.equals("")) {
            INSEEBean bean = mgr.getElementByPrimaryKey(Integer.valueOf(id));
            session.setAttribute("INSEEBean", bean);
        }
    }

    @Override
    public boolean sauver(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        boolean returnValue = false;
        INSEEMgr mgr = new INSEEMgr();
        INSEEBean bean = (INSEEBean) form;

        if (!bean.getNom().equals("")) {
            returnValue = true;
            mgr.saveElement((INSEEBean) form);
        }
        return returnValue;
    }

    @Override
    public void creer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        INSEEBean insee = new INSEEBean();
        request.setAttribute("insee", insee);
    }

    @Override
    public void supprimer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        INSEEMgr mgr = new INSEEMgr();
        mgr.removeElement((INSEEBean) form);
    }

    @Override
    public void lister(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        INSEEMgr mgr = new INSEEMgr();
        request.setAttribute("INSEEList", mgr.getAllElements());
    }

    @Override
    public void modifier(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        this.afficher(mapping, form, request, response);
    }

}
