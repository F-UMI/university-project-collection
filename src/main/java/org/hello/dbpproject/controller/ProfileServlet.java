package org.hello.dbpproject.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hello.dbpproject.service.MemberService;
import org.hello.dbpproject.service.MemberServiceImpl;

@WebServlet(description = "ProfileServlet", urlPatterns = {"/profile"})
public class ProfileServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;
  private static final String PROFILE_URL = "content/profile.jsp";
  private final MemberService memberService = new MemberServiceImpl();
  public ProfileServlet() {
    super();
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
      memberService.searchMemberSessionInfo(request,response, PROFILE_URL);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
  }
}
    