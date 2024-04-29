package org.hello.dbpproject.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hello.dbpproject.entity.Product;

@WebServlet(description = "DeleteFromCartServlet", urlPatterns = {"/deleteFromCart"})
public class DeleteFromCartServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

  public DeleteFromCartServlet() {
    super();
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    HttpSession session = request.getSession();
    String selectedProductId = (String) session.getAttribute("selectedProductId");
    List<Product> cartList = (List<Product>) request.getSession().getAttribute("cartList");
    System.out.println("장바구니에서 물품을 삭제합니다." + selectedProductId);
    if (cartList != null) {
      cartList.removeIf(product -> product.getProductId().equals(selectedProductId));
      request.getSession().setAttribute("cartList", cartList);
    }
    response.sendRedirect("/content/cart.jsp");
  }
}
    