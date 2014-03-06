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
public class SalonMgr extends BeanMgrAbstract<SalonBean> implements BeanMgrInterface<SalonBean> {

    @Override
    public ArrayList<SalonBean> getAllElements() {
        return this.getAllElements(SalonBean.class);
    }
    
    @Override
    public SalonBean getElementByPrimaryKey(Object primaryKey) {
    return this.getElementByPrimaryKey((Integer) primaryKey, SalonBean.class);  
    }

    @Override
    public SalonBean getElementByValue(String ColumnName, String Value) {
         return this.getElementByValue(ColumnName, Value, SalonBean.class);
    }

}
