package duy.dev.data.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import duy.dev.data.dao.OrderDetailDao;
import duy.dev.data.driver.MySQLDriver;
import duy.dev.data.model.OrderDetail;

public class OrderDetailDaoImpl implements OrderDetailDao{

	@Override
	public void insert(OrderDetail orderdetail) {
		// TODO Auto-generated method stub
		Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "INSERT INTO ORDER_DETAILS(id, order_id, product_id,quantity, price) VALUES(NULL,?,?,?,?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderdetail.productId);
            stmt.setInt(2, orderdetail.orderId);
            stmt.setInt(3, orderdetail.quantity);
            stmt.setDouble(4, orderdetail.price);
            stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
        }
	}

	@Override
	public void update(OrderDetail orderdetail) {
		// TODO Auto-generated method stub
		Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "UPDATE ORDER_DETAILS SET  ORDER_ID=?, PRODUCT_ID =?,QUANTITY=?, PRICE=? WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderdetail.productId);
            stmt.setInt(2, orderdetail.orderId);
            stmt.setInt(3, orderdetail.quantity);
            stmt.setDouble(4, orderdetail.price);
            stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
        }
	}

	@Override
	public void delete(int orderdetailId) {
		// TODO Auto-generated method stub
		 try {
	            Connection conn = MySQLDriver.getInstance().getConnection();
	            String sql = "DELETE FROM ORDER_DETAILS WHERE ID=?";
	            PreparedStatement stmt = conn.prepareStatement(sql);
	            stmt.setInt(1, orderdetailId);
	            stmt.execute();
	        } catch (Exception e) {
	            // TODO: handle exception
	        }
	}

	@Override
	public OrderDetail find(int orderdetailId) {
		// TODO Auto-generated method stub
		Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM ORDER_DETAILS WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderdetailId);
            ResultSet rs = (ResultSet) stmt.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                int productId = rs.getInt("productId");
                int orderId = rs.getInt("orderId");
                int quantity = rs.getInt("quantity");
                double price =rs.getDouble("price");
                return new OrderDetail(id, quantity, productId, orderId, price);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
		return null;
	}

	@Override
	public List<OrderDetail> findALL() {
		// TODO Auto-generated method stub
		List<OrderDetail> orderdetailList = new ArrayList<>();
		Connection conn = MySQLDriver.getInstance().getConnection();
		try {
			String sql = "SELECT * FROM ORDER_DETAILS";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
            	int id = rs.getInt("id");
                int productId = rs.getInt("productId");
                int orderId = rs.getInt("orderId");
                int quantity = rs.getInt("quantity");
                double price = rs.getDouble("price");
                orderdetailList.add(new OrderDetail(id, productId, orderId,quantity, price));
            }
        } catch (SQLException ex) {}
		
		return orderdetailList;  
	}

	@Override
	public List<OrderDetail> findByOrder(int orderId) {
		// TODO Auto-generated method stub
		List<OrderDetail> orderdetail = new ArrayList<>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM ORDER_DETAILS WHERE ORDER_ID = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderId);
            
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int productId = rs.getInt("productId");
                int quantity = rs.getInt("quantity");
                double price = rs.getDouble("price");
                orderdetail.add(new OrderDetail(id, productId, orderId, quantity, price));
            }
        } catch (SQLException ex) {
        }

        return orderdetail;
	}
}
