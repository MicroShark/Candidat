/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package accesscontrol.beans;

import java.util.ArrayList;
import util.BeanMgrAbstract;
import util.BeanMgrInterface;

/**
 *
 * @author User
 */
public class UtilisateurMgr extends BeanMgrAbstract<UtilisateurBean> implements BeanMgrInterface<UtilisateurBean> {

    @Override
    public ArrayList<UtilisateurBean> getAllElements() {   
        return this.getAllElements(UtilisateurBean.class);
    }

    @Override
    public UtilisateurBean getElementByPrimaryKey(Object primaryKey) {
        return this.getElementByPrimaryKey((Integer) primaryKey, UtilisateurBean.class);
    }

    @Override
    public UtilisateurBean getElementByValue(String ColumnName, String Value) {
        return this.getElementByValue(ColumnName, Value, UtilisateurBean.class);
    }
    
}
