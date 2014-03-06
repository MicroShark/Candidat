/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.util.ArrayList;
import util.BeanMgrAbstract;
import util.BeanMgrInterface;

/**
 *
 * @author User
 */
public class NiveauEtudeMgr extends BeanMgrAbstract<NiveauEtudeBean> implements BeanMgrInterface<NiveauEtudeBean> {

    @Override
    public ArrayList<NiveauEtudeBean> getAllElements() {
        return this.getAllElements(NiveauEtudeBean.class);
    }

    @Override
    public NiveauEtudeBean getElementByPrimaryKey(Object primaryKey) {
        return this.getElementByPrimaryKey((Integer) primaryKey, NiveauEtudeBean.class);
    }

    @Override
    public NiveauEtudeBean getElementByValue(String ColumnName, String Value) {
        return this.getElementByValue(ColumnName, Value, NiveauEtudeBean.class);
    }

}
