package duy.dev.data.dao;

import java.util.List;

import duy.dev.data.model.Order;

public interface OrderDao {

    public void insert(Order order);

    public void update(Order order);

    public void delete(int id);

    public Order find(int id);

    public Order find(String code);

    public List<Order> findAll();

    public List<Order> findByStatus(String status);

    public int countOrderByDay(String date);
}
