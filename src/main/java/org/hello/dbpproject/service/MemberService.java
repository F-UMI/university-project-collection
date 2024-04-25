package org.hello.dbpproject.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MemberService {

  void registrationMember(HttpServletRequest request, HttpServletResponse response) throws IOException;

  void searchMemberSessionInfo(HttpServletRequest request, HttpServletResponse response, String url)
      throws IOException, ServletException;

  void updateMemberInfo(HttpServletRequest request, HttpServletResponse response) throws IOException;

  void loginMember(HttpServletRequest req, HttpServletResponse res) throws IOException;
}
