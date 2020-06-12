package com.mt.service.impl;

import com.mt.dao.MessageDao;
import com.mt.domain.Message;
import com.mt.service.MessageService;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author 若风
 * @version 1.0
 */
@Transactional
public class MessageServiceImpl implements MessageService {
    private MessageDao messageDao;

    public void setMessageDao(MessageDao messageDao) {
        this.messageDao = messageDao;
    }

    public void save(Message message) {
        messageDao.save(message);
    }
}
