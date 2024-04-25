package org.hello.dbpproject.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.hello.dbpproject.service.MemberService;
import org.hello.dbpproject.service.MemberServiceImpl;

@WebServlet(description = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

  public LoginServlet() {
    super();
  }

  private final MemberService memberService = new MemberServiceImpl();

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    memberService.loginMember(request, response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    memberService.loginMember(request, response);
  }
}
    