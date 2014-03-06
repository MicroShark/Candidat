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
 * @author user
 */
public class PorteOuvMgr extends BeanMgrAbstract<PorteOuvBean> implements BeanMgrInterface<PorteOuvBean> {
    @Override
    public ArrayList<PorteOuvBean> getAllElements() {
        return this.getAllElements(PorteOuvBean.class);
    }

    @Override
    public PorteOuvBean getElementByPrimaryKey(Object primaryKey) {
        return this.getElementByPrimaryKey((Integer) primaryKey, PorteOuvBean.class);
    }

    @Override
    public PorteOuvBean getElementByValue(String ColumnName, String Value) {
        return this.getElementByValue(ColumnName, Value, PorteOuvBean.class);
    }

}
