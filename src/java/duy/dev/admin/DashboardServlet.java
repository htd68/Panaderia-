/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package duy.dev.admin;

import duy.dev.data.dao.Database;
import duy.dev.data.dao.DatabaseDao;
import duy.dev.data.dao.OrderDao;
import duy.dev.data.dao.ProductDao;
import duy.dev.data.dao.UserDao;
import duy.dev.data.model.Order;
import duy.dev.data.model.OrderDetail;
import duy.dev.data.model.Product;
import duy.dev.util.Constants;
import duy.dev.util.GetDateTime;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Laptop QHD
 */
public class DashboardServlet extends BaseAdminServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        UserDao userDao = DatabaseDao.getInstance().getUserDao();
        int numberUser = userDao.findAll().size();

        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        List<Product> productList = productDao.findAll();
        int numberProduct = productDao.findAll().size();

        OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
        int numberOrder = orderDao.findAll().size();
        double total = getTotal();

        request.setAttribute("numberUser", numberUser);
        request.setAttribute("numberProduct", numberProduct);
        request.setAttribute("numberOrder", numberOrder);
        request.setAttribute("total", total);
        request.setAttribute("productList", productList);
        
        List<Order> orderPendingList = orderDao.findByStatus("pending");
        request.setAttribute("orderPendingList", orderPendingList);
        
        //Chart
        List<String> dateList = GetDateTime.getDates(Constants.NUMBER_DAY);
        request.setAttribute("dateList", dateList);
        
        List<Integer> countEachDay = new ArrayList<>();
        for(int i = 0; i < Constants.NUMBER_DAY; i++){
            countEachDay.add(orderDao.countOrderByDay(dateList.get(i)));
        }
        request.setAttribute("countEachDay", countEachDay);
        
        request.getRequestDispatcher("admin/dashboard.jsp").include(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    private double getTotal() {
        double total = 0;
        OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
        List<Order> orderList = orderDao.findByStatus("finished");
        for (Order order : orderList) {
            List<OrderDetail> orderDetaiList = Database.getInstance().getOrderDetailDao().findByOrder(order.id);
            total += sum(orderDetaiList);
        }
        return total;
    }

    private double sum(List<OrderDetail> orderDetaiList) {
        double s = 0;
        for (OrderDetail orderDetail : orderDetaiList) {
            s += orderDetail.amount * orderDetail.price;
        }

        return s;
    }
}
