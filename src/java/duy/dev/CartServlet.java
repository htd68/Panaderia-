/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package duy.dev;

import duy.dev.data.model.OrderDetailSession;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author LENOVO
 */
public class CartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<OrderDetailSession> cart = (List<OrderDetailSession>) session.getAttribute("cart");
        if(cart == null) cart = new ArrayList<>();
        
        request.setAttribute("cart", cart);
        request.setAttribute("total", total(cart));

        request.getRequestDispatcher("cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "create":
                createOrder(request, response);
                break;
            case "update":
                updateOrder(request, response);
                break;
            case "delete":
                deleteOrder(request, response);
                break;
            default:
                throw new AssertionError();
        }
    }

    private void createOrder(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();

        int productId = Integer.parseInt(request.getParameter("productId"));
        String productName = request.getParameter("productName");
        String productImage = request.getParameter("productImage");
        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        OrderDetailSession orderDetailSession = new OrderDetailSession(productId, productName, productImage, productPrice, quantity);
        List<OrderDetailSession> cart = (List<OrderDetailSession>) session.getAttribute("cart");

        if (cart == null) {
            cart = new ArrayList<>();
            cart.add(orderDetailSession);
        } else {
            OrderDetailSession find = find(cart, orderDetailSession.getProductId());
            if (find == null) {
                cart.add(orderDetailSession);
            } else {
                updateCart(session, cart, find, find.getQuantity() + quantity);
            }
        }
        session.setAttribute("cart", cart);
        response.sendRedirect("CartServlet");
    }

    private OrderDetailSession find(List<OrderDetailSession> cart, int productId) {
        for (OrderDetailSession ods : cart) {
            if (ods.getProductId() == productId) {
                return ods;
            }
        }
        return null;
    }

    private void updateCart(HttpSession session, List<OrderDetailSession> cart, OrderDetailSession find, int value) {
        for (OrderDetailSession ods : cart) {
            if (ods.getProductId() == find.getProductId()) {
                ods.setQuantity(value);
                if (ods.getQuantity() < 1) {
                    ods.setQuantity(1);
                }
            }
        }
        session.setAttribute("cart", cart);
    }

    private void deleteOrder(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        int productId = Integer.parseInt(request.getParameter("productId"));
        List<OrderDetailSession> cart = (List<OrderDetailSession>) session.getAttribute("cart");

        for (int i = 0; i < cart.size(); i++) {
            if (cart.get(i).getProductId() == productId) {
                cart.remove(i);
            }else {
                
            }
            session.setAttribute("cart", cart);
            response.sendRedirect("CartServlet");
        }
    }

    private void updateOrder(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        int productId = Integer.parseInt(request.getParameter("productId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        List<OrderDetailSession> cart = (List<OrderDetailSession>) session.getAttribute("cart");
        OrderDetailSession find = find(cart, productId);

        updateCart(session, cart, find, quantity);
        response.sendRedirect("CartServlet");
    }
    private int total(List<OrderDetailSession> cart) {
        int sum = 0;
        for (OrderDetailSession ods : cart) {
            sum += ods.getProductPrice() * ods.getQuantity();
        }
        return sum;
    }
}
