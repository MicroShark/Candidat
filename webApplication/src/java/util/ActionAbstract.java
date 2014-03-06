/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionRedirect;

/**
 *
 * @author User
 */
public abstract class ActionAbstract extends Action {

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {

        ActionForward forward = null;
        String sAction = request.getParameter("action");
        
        
        switch (sAction.toLowerCase().trim()) {
            case "creer":
                this.creer(mapping, form, request, response);
                forward = mapping.findForward("jspCreer");
                break;
            case "afficher":
                this.afficher(mapping, form, request, response);
                forward = mapping.findForward("jspAfficher");
                break;
            case "sauver":
                this.sauver(mapping, form, request, response);
                forward = mapping.findForward("actionAfficher");
                ActionRedirect redirect = new ActionRedirect(forward);                
                redirect.addParameter("id","");
                forward = redirect;
                break;
            case "supprimer":
                this.supprimer(mapping, form, request, response);
                forward = mapping.findForward("actionLister");
                break;
            case "lister":
                this.lister(mapping, form, request, response);
                forward = mapping.findForward("jspLister");
                break;
            case "modifier":
                this.modifier(mapping, form, request, response);
                forward = mapping.findForward("jspCreer");
                break;
            default:
                forward = mapping.findForward("error");
        }

        return forward;
    }

    public abstract void afficher(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response);

    public abstract boolean sauver(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response);

    public abstract void creer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response);

    public abstract void supprimer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response);

    public abstract void lister(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response);

    public abstract void modifier(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response);
}
