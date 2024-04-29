package org.hello.dbpproject.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hello.dbpproject.Repository.ProductRepository;
import org.hello.dbpproject.entity.Member;
import org.hello.dbpproject.entity.MemberDAO;
import org.hello.dbpproject.entity.Product;
import org.hello.dbpproject.entity.ProductDAO;


public class MemberServiceImpl implements MemberService {

  ProductRepository repository = ProductRepository.getInstance();

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
    Member member = (Member) session.getAttribute("member");
    if (member == null) {
      response.setCharacterEncoding("UTF-8");
      response.setContentType("text/html; charset=UTF-8");
      PrintWriter out = response.getWriter();
      out.println("<script> alert('로그인 이후 이용해주세요');");
      out.println("window.location.replace('content/login.jsp'); </script>");
      out.close();
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
    if (((member != null) && !Objects.equals(member.getName(), "null")) && (inputID.equals(member.getId()) && inputPassword.equals(
        member.getPassword()))) {
      System.out.println("Session 정보 -> id : " + member.getId() + "password :" + member.getPassword());
      System.out.println("-- Complete!! --");
      member.setStatus(true);
      session.setAttribute("cartList", new ArrayList<>());
      response.sendRedirect("/content/index.jsp");
    } else {
      response.setCharacterEncoding("UTF-8");
      response.setContentType("text/html; charset=UTF-8");
      PrintWriter out = response.getWriter();
      out.println("<script> alert('아이디 또는 비밀번호가 틀립니다.');");
      out.println("history.go(-1); </script>");
      out.close();
      response.sendRedirect("/content/login.jsp");
    }

  }

  @Override
  public void registrationProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {

    int productPrice;
    long productsInStock;

    request.setCharacterEncoding("utf-8");
    String productCategory = request.getParameter("productCategory");
    String productId = String.valueOf(repository.getListSize() + 1);
    String productName = request.getParameter("productName");
    String price = request.getParameter("productPrice");
    String productDescription = request.getParameter("productDescription");
    String productRoastery = request.getParameter("productRoastery");
    String inStock = request.getParameter("productsInStock");
    String productCondition = request.getParameter("productCondition");
    String cupNote = request.getParameter("cupNote");
    List<String> imgPath = selectImage(productCategory);

    if (price.isEmpty()) {
      productPrice = 0;
    } else {
      productPrice = Integer.parseInt(price);
    }
    if (inStock.isEmpty()) {
      productsInStock = 0;
    } else {
      productsInStock = Long.parseLong(inStock);
    }

    Product product = new Product(productCategory, productId, productName, productPrice, productDescription, productRoastery,
        productsInStock, productCondition, cupNote, imgPath);

    System.out.println("상품 등록을 준비합니다." + product);
    repository.addProduct(product);
    response.sendRedirect("/content/index.jsp");
  }

  @Override
  public void addProductToCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
    request.setCharacterEncoding("utf-8");
    HttpSession session = request.getSession();
    Product selectedProduct = repository.getProductById(String.valueOf(session.getAttribute("selectedProductId")));
    int quantity = Integer.parseInt(request.getParameter("quantity"));

    List<Product> list = (List<Product>) session.getAttribute("cartList");
    if (list == null) {
      list = new ArrayList<>();
      session.setAttribute("cartList", list);
    }

    if (list.contains(selectedProduct)) {
      selectedProduct.setQuantity(selectedProduct.getQuantity() + quantity);
    } else {
      list.add(selectedProduct);
      selectedProduct.setQuantity(quantity);
    }
    System.out.println("등록된 상품의 개수" + selectedProduct.getQuantity() + "개");

    response.sendRedirect("/content/cart.jsp");
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
    member.setPassword(memberDAO.getPassword());
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

  private Product saveProductInfo(ProductDAO productDAO) {
    Product product = new Product();
    product.setProductCategory(productDAO.getProductCategory());
    product.setProductId(productDAO.getProductId());
    product.setProductName(productDAO.getProductName());
    product.setProductPrice(productDAO.getProductPrice());
    product.setProductDescription(productDAO.getProductDescription());
    product.setProductRoastery(productDAO.getProductRoastery());
    product.setProductsInStock(productDAO.getProductsInStock());
    product.setProductCondition(productDAO.getProductCondition());
    product.setCupNote(productDAO.getCupNote());
    return product;
  }

  private List<String> selectImage(String productCategory) {
    if ("Single Origin".equals(productCategory)) {
      return Collections.singletonList("../images/product-single-origin.jpg");
    } else if ("Blend".equals(productCategory)) {
      return Collections.singletonList("../images/product-blend.jpg");
    } else if ("DripBag".equals(productCategory)) {
      return Collections.singletonList("../images/product-drip-bag.jpg");
    } else {
      return Collections.singletonList("../images/beans.png");
    }
  }
}

