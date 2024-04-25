package org.hello.dbpproject.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hello.dbpproject.entity.Member;
import org.hello.dbpproject.entity.MemberDAO;

public class MemberServiceImpl implements MemberService {

  public void registrationMember(HttpServletRequest request, HttpServletResponse response) throws IOException {
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String email = request.getParameter("email");
    String phoneNumber = request.getParameter("phoneNumber");
    String zipCode = request.getParameter("zipCode");
    String address = request.getParameter("address");
    String detailedAddress = request.getParameter("detailedAddress");
    String extraAddress = request.getParameter("extraAddress");
    boolean status = false;
    defineMember(request, id, password, name, gender, email, phoneNumber, zipCode, address, detailedAddress, extraAddress, status);
    response.sendRedirect("content/login.jsp");
  }

  @Override
  public void searchMemberSessionInfo(HttpServletRequest request, HttpServletResponse response, String URL)
      throws IOException, ServletException {
    HttpSession session = request.getSession();
    if (session.getAttribute("member") == null) {
      session.setAttribute("alertMsg", "로그인 후 이용해주세요.");
      response.sendRedirect("content/login.jsp");
    } else {
      response.sendRedirect(URL);
//      request.getRequestDispatcher(URL).forward(request, response);
    }
  }

  @Override
  public void updateMemberInfo(HttpServletRequest request, HttpServletResponse response) throws IOException {
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    String password = request.getParameter("editPassword");
    String name = request.getParameter("editName");
    String gender = request.getParameter("editGender");
    String email = request.getParameter("editEmail");
    String phoneNumber = request.getParameter("editPhoneNumber");
    String zipcode = request.getParameter("editZipCode");
    String address = request.getParameter("editAddress");
    String detailedAddress = request.getParameter("editDetailedAddress");
    String extraAddress = request.getParameter("editExtraAddress");
    boolean status = true;
    defineMember(request, id, password, name, gender, email, phoneNumber, zipcode, address, detailedAddress, extraAddress, status);
    response.sendRedirect("content/profile.jsp");
  }

  @Override
  public void loginMember(HttpServletRequest request, HttpServletResponse response) throws IOException {
    HttpSession session = request.getSession();
    System.out.println("--Login Processing--");

    request.setCharacterEncoding("utf-8");
    String inputID = request.getParameter("id");
    String inputPassword = request.getParameter("password");
    System.out.println("request정보 -> id" + inputID + "password :" + inputPassword);

    //세션 정보 설정
    Member member = (Member) session.getAttribute("member");
    //세션 정보 확인
    if ((member != null) && (inputID.equals(member.getId()) && inputPassword.equals(member.getPassword()))) {
      System.out.println("Session 정보 -> id : " + member.getId() + "password :" + member.getPassword());
      System.out.println("-- Complete!! --");
      member.setStatus(true);
      response.sendRedirect("/content/index.jsp");
    } else {
      response.sendRedirect("/content/login_fail.jsp");
    }

  }


  private void defineMember(HttpServletRequest request, String id, String password, String name, String gender, String email, String phoneNumber,
      String zipCode, String address, String detailedAddress, String extraAddress, boolean status) {
    MemberDAO memberDAO = new MemberDAO(id, password, name, gender, email, phoneNumber, zipCode, address, detailedAddress, extraAddress, status);
    System.out.println(memberDAO);
    Member registeredMemberInformation = saveMemberInfo(memberDAO);
    HttpSession session = request.getSession();
    session.setAttribute("member", registeredMemberInformation);
  }

  private Member saveMemberInfo(MemberDAO memberDAO) {
    Member member = new Member();
    member.setId(memberDAO.getId());
    member.setPassword(memberDAO.getAddress());
    member.setName(memberDAO.getName());
    member.setGender(memberDAO.getGender());
    member.setEmail(memberDAO.getEmail());
    member.setPhoneNumber(memberDAO.getPhoneNumber());
    member.setZipCode(memberDAO.getZipCode());
    member.setAddress(memberDAO.getAddress());
    member.setDetailedAddress(memberDAO.getDetailedAddress());
    member.setExtraAddress(memberDAO.getExtraAddress());
    member.setStatus(memberDAO.isStatus());
    System.out.println(member);
    return member;
  }
}
