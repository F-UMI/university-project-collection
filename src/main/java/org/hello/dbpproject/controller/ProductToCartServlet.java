package org.hello.dbpproject.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hello.dbpproject.service.MemberService;
import org.hello.dbpproject.service.MemberServiceImpl;

@WebServlet(description = "ProductToCartServlet", urlPatterns = {"/addToCart"})
public class ProductToCartServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;
  private final MemberService memberService = new MemberServiceImpl();
  public ProductToCartServlet() {
    super();
  }

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    memberService.addProductToCart(request, response);
  }
}
