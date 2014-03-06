package beans;

import java.util.ArrayList;
import util.BeanMgrAbstract;
import util.BeanMgrInterface;

public class CandidatMgr extends BeanMgrAbstract<CandidatBean> implements BeanMgrInterface<CandidatBean> {

    @Override
    public ArrayList<CandidatBean> getAllElements() 
    {
        return this.getAllElements(CandidatBean.class);
    }

    @Override
    public CandidatBean getElementByPrimaryKey(Object primaryKey)
    {
        return this.getElementByPrimaryKey((Integer)primaryKey, CandidatBean.class);
    }

    @Override
    public CandidatBean getElementByValue(String ColumnName, String Value) {
        return this.getElementByValue(ColumnName, Value, CandidatBean.class);
    }
}
