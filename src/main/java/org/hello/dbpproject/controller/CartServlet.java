package org.hello.dbpproject.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hello.dbpproject.service.MemberService;
import org.hello.dbpproject.service.MemberServiceImpl;

@WebServlet(description = "CartServlet", urlPatterns = {"/cart"})
public class CartServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;
  private static final String CART_URL = "content/cart.jsp";
  private final MemberService memberService = new MemberServiceImpl();

  public CartServlet() {
    super();
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    memberService.searchMemberSessionInfo(request, response, CART_URL);
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse res)
      throws ServletException, IOException {
  }
}
    