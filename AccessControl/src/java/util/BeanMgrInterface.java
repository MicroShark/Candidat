/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.util.ArrayList;

/**
 *
 * @author HiTeMa
 * @param <E> Class Bean
 */
public interface BeanMgrInterface<E> {
    
    public ArrayList<E> getAllElements();

    public E getElementByPrimaryKey(Object primaryKey);
    
    public E getElementByValue(String ColumnName, String Value);

    public void removeElement(E element);

    public void saveElement(E element);

}
