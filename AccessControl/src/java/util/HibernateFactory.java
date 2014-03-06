/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package util;

import org.hibernate.CacheMode;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

/**
 *
 * @author User
 */
public class HibernateFactory {
    
    private final SessionFactory sessionFactory;
    private Session session;
    private Transaction transaction;
    
    private HibernateFactory() {
        sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
    }
    
    public static HibernateFactory getInstance() {
        return NewSingletonHolder.INSTANCE;
    }
    
    public Transaction getTransaction() {
        return transaction;
    }

    public Session getSession() {
        if (session==null) { this.openSession(); }
        if (!session.isOpen()) { this.openSession(); }
        return session;
    }
    
    private void openSession() {
        session = sessionFactory.openSession();
        session.setCacheMode(CacheMode.IGNORE);
        transaction = session.beginTransaction();
    }
    
    public Session newSession () {
        session.close();
        return this.getSession();
    }
    
    
    private static class NewSingletonHolder {
        private static final HibernateFactory INSTANCE = new HibernateFactory();
    }
}
