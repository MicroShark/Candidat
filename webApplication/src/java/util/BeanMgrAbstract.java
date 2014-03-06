/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package util;

import java.util.ArrayList;
import org.apache.struts.action.ActionForm;
import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author User
 * @param <E>
 */
public class BeanMgrAbstract<E> extends ActionForm {
    
    protected final HibernateFactory hibernate;
    protected Session session;
    protected Transaction trs;

    public BeanMgrAbstract() {
        hibernate = HibernateFactory.getInstance();
        session = hibernate.getSession();
        trs = hibernate.getTransaction();
    }

    
    public ArrayList<E> getAllElements(Class typeClass) {
        Criteria critere = session.createCriteria(typeClass);
        ArrayList <E> beans = (ArrayList<E>) critere.list();
        return beans;
    }

    protected E getElementByPrimaryKey(Object primaryKey, Class typeClass) {
        Criteria critere = session.createCriteria(typeClass)
                                  .add(Restrictions.like("id", (Integer) primaryKey));
        E bean = (E) critere.uniqueResult();
        return bean;
    }

    public void removeElement(E element) {
        session = hibernate.newSession();
        trs = hibernate.getTransaction();
        session.delete(element);
        trs.commit();
    }

    public void saveElement(E bean) {
        session = hibernate.newSession();
        trs = hibernate.getTransaction();
        session.saveOrUpdate(bean);
        trs.commit();
    }

    protected E getElementByValue(String ColumnName, String Value, Class typeClass) {
        Criteria critere = session.createCriteria(typeClass)
                                  .add(Restrictions.like(ColumnName, Value));
        E bean = (E) critere.uniqueResult();
        return bean;
    }
    
}
