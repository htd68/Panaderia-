package duy.dev.data.dao;

import java.util.List;

import duy.dev.data.model.OrderDetail;

public interface OrderDetailDao {
    public void insert(OrderDetail orderdetail);
    public void update(OrderDetail orderdetail);
    public void delete(int orderdetailId);
    public OrderDetail find(int orderdetailId);
    public List<OrderDetail> findALL();
    public List<OrderDetail> findByOrder(int orderId);

}