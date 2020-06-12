package com.mt.action;

import com.mt.domain.Message;
import com.mt.service.MessageService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * @author 若风
 * @version 1.0
 */
public class MessageAction extends ActionSupport implements ModelDriven<Message> {
    private Message message = new Message();
    private MessageService messageService;

    public void setMessageService(MessageService messageService) {
        this.messageService = messageService;
    }

    public Message getModel() {
        return message;
    }

    public String save(){
        messageService.save(message);
        return SUCCESS;
    }
}
