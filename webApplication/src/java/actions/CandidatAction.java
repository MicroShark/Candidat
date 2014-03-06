/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import beans.CandidatBean;
import beans.CandidatMgr;
import beans.INSEEBean;
import beans.INSEEMgr;
import beans.NiveauEtudeBean;
import beans.NiveauEtudeMgr;
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
public class CandidatAction extends ActionAbstract {
    
  @Override
    public void afficher(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        CandidatMgr can = new CandidatMgr();
        String id = request.getParameter("id");
        CandidatBean bean = can.getElementByPrimaryKey(Integer.valueOf(id));
        session.setAttribute("CandidatBean", bean);        
    }

    @Override
    public boolean sauver(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        boolean returnValue = false;
        CandidatMgr can = new CandidatMgr();
        CandidatBean bean = (CandidatBean) form;
        
        if (!bean.getNom().equals("")) {
            returnValue = true;
            can.saveElement((CandidatBean) form);
        }
        return returnValue;
    }

     @Override
    public void creer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        CandidatBean cand = new CandidatBean();
        session.setAttribute("CandidatBean", cand);  
        
        //recuperer le niveau d etudes, la formationINSEE, les dates portes ouvertes
        INSEEMgr imgr = new INSEEMgr();
        ArrayList<INSEEBean> allINSEE = imgr.getAllElements();
        request.setAttribute("INSEEBeans", allINSEE);
        
        PorteOuvMgr pomgr = new PorteOuvMgr();
        ArrayList<PorteOuvBean> allPorteOuv = pomgr.getAllElements();
        request.setAttribute("PorteOuvBeans", allPorteOuv);
        
        NiveauEtudeMgr nemgr = new NiveauEtudeMgr();
        ArrayList<NiveauEtudeBean> allNivEt = nemgr.getAllElements();
        request.setAttribute("NiveauEtudeBeans", allNivEt);
    }

    @Override
    public void supprimer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        CandidatMgr can = new CandidatMgr();
        can.removeElement((CandidatBean) form);
    }

    @Override
    public void lister(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        CandidatMgr can = new CandidatMgr();
        request.setAttribute("CandidatList", can.getAllElements());
    }

    @Override
    public void modifier(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
        this.afficher(mapping, form, request, response);
    }
    
}
