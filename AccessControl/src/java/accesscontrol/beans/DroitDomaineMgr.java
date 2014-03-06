/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package accesscontrol.beans;

import java.util.ArrayList;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import util.BeanMgrAbstract;
import util.BeanMgrInterface;

/**
 *
 * @author User
 */
public class DroitDomaineMgr extends BeanMgrAbstract<DroitDomaineBean> implements BeanMgrInterface<DroitDomaineBean> {

    @Override
    public ArrayList<DroitDomaineBean> getAllElements() {   
        return this.getAllElements(DroitDomaineBean.class);
    }

    @Override
    public DroitDomaineBean getElementByPrimaryKey(Object primaryKey) {
        return this.getElementByPrimaryKey(primaryKey, DroitDomaineBean.class);
    }
    
    @Override
    protected DroitDomaineBean getElementByPrimaryKey(Object primaryKey, Class typeClass) {
        Criteria critere = session.createCriteria(typeClass)
                                  .add(Restrictions.like("code", (String) primaryKey));
        DroitDomaineBean bean = (DroitDomaineBean) critere.uniqueResult();
        return bean;
    }

    @Override
    public DroitDomaineBean getElementByValue(String ColumnName, String Value) {
        return this.getElementByValue(ColumnName, Value, DroitDomaineBean.class);
    }
    
}
