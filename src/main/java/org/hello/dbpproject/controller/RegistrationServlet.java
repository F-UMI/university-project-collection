package org.hello.dbpproject.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hello.dbpproject.service.MemberService;
import org.hello.dbpproject.service.MemberServiceImpl;

@WebServlet(description = "RegistrationServlet", urlPatterns = {"/registration"})
public class RegistrationServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;
  private final MemberService memberService = new MemberServiceImpl();

  public RegistrationServlet() {
    super();
  }

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse res)
      throws ServletException, IOException {
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse res)
      throws ServletException, IOException {
      memberService.registrationMember(req, res);
  }
}
    