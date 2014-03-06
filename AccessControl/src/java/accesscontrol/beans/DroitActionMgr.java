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
public class DroitActionMgr extends BeanMgrAbstract<DroitActionBean> implements BeanMgrInterface<DroitActionBean> {

    @Override
    public ArrayList<DroitActionBean> getAllElements() {   
        return this.getAllElements(DroitActionBean.class);
    }

    @Override
    public DroitActionBean getElementByPrimaryKey(Object primaryKey) {
        return this.getElementByPrimaryKey((String) primaryKey, DroitActionBean.class);
    }
    
    protected DroitActionBean getElementByPrimaryKey(String primaryKey, Class typeClass) {
        Criteria critere = session.createCriteria(typeClass)
                                  .add(Restrictions.like("code", primaryKey));
        DroitActionBean bean = (DroitActionBean) critere.uniqueResult();
        return bean;
    }

    @Override
    public DroitActionBean getElementByValue(String ColumnName, String Value) {
        return this.getElementByValue(ColumnName, Value, DroitActionBean.class);
    }
    
}
