package duy.dev.data.model;

import duy.dev.data.dao.Database;

public class Order {

    public int id;
    public String code;
    public String status;
    public int userId;

    public Order(int id, String code, String status, int userId) {
        this.id = id;
        this.code = code;
        this.status = status;
        this.userId = userId;
    }

    public Order(String code, String status, int userId) {
        this.code = code;
        this.status = status;
        this.userId = userId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public User getUser(){
    return Database.getInstance().getUserDao().find(userId);
    }

}
