package com.mt.dao.impl;

import com.mt.dao.MessageDao;
import com.mt.domain.Message;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

/**
 * @author 若风
 * @version 1.0
 */
public class MessageDaoImpl extends HibernateDaoSupport implements MessageDao {
    public void save(Message message) {
        this.getHibernateTemplate().save(message);
    }
}
