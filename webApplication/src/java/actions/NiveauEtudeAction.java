/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import beans.NiveauEtudeBean;
import beans.NiveauEtudeMgr;
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
public class NiveauEtudeAction extends ActionAbstract {

    @Override
    public void afficher(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        NiveauEtudeMgr mgr = new NiveauEtudeMgr();
        String id = request.getParameter("id");
        if (!id.equals("")) {
            NiveauEtudeBean bean = mgr.getElementByPrimaryKey(Integer.valueOf(id));
            request.setAttribute("NiveauEtudeBean", bean);
        }
    }

    @Override
    public boolean sauver(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        boolean returnValue = false;
        NiveauEtudeMgr mgr = new NiveauEtudeMgr();
        NiveauEtudeBean bean = (NiveauEtudeBean) form;

        if (!bean.getNom().equals("")) {
            returnValue = true;
            mgr.saveElement(bean);
        }
        return returnValue;
    }

    @Override
    public void creer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        NiveauEtudeBean bean = new NiveauEtudeBean();
        session.setAttribute("NiveauEtudeBean", bean);
    }

    @Override
    public void supprimer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        NiveauEtudeMgr mgr = new NiveauEtudeMgr();
        mgr.removeElement((NiveauEtudeBean) form);
    }

    @Override
    public void lister(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        NiveauEtudeMgr mgr = new NiveauEtudeMgr();
        request.setAttribute("NEList", mgr.getAllElements());
    }

    @Override
    public void modifier(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        this.afficher(mapping, form, request, response);
    }

}
