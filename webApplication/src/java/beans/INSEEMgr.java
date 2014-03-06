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
public class INSEEMgr extends BeanMgrAbstract<INSEEBean> implements BeanMgrInterface<INSEEBean>{

    @Override
    public ArrayList<INSEEBean> getAllElements() {
        return this.getAllElements(INSEEBean.class);
    }

    @Override
    public INSEEBean getElementByPrimaryKey(Object primaryKey) {
        return this.getElementByPrimaryKey(primaryKey, INSEEBean.class);
    }

    @Override
    public INSEEBean getElementByValue(String ColumnName, String Value) {
        return this.getElementByValue(ColumnName, Value, INSEEBean.class);
    }


}
