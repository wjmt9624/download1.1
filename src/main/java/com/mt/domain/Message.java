package com.mt.domain;

/**
 * @author 若风
 * @version 1.0
 */
public class Message {
    private Long cust_id;
    private String cust_message;

    public String getCust_message() {
        return cust_message;
    }

    public void setCust_message(String cust_message) {
        this.cust_message = cust_message;
    }

    public Long getCust_id() {
        return cust_id;
    }

    public void setCust_id(Long cust_id) {
        this.cust_id = cust_id;
    }
}
