package org.hello.dbpproject.entity;

public class Member {

  private String email;
  private String id;
  private String password;
  private String name;
  private String gender;
  private String phoneNumber;
  private String zipCode;
  private String address;
  private String detailedAddress;
  private String extraAddress;
  private boolean status;

/*  private String id = "admin";
  private String password = "admin";
  private String name = "신윤섭";
  private String gender = "남성";
  private String email = "201958110@hs.ac.kr";
  private String phoneNumber = "010-1234-5678";
  private String zipCode = "18101";
  private String address = "경기 오산시 한신대길 137";
  private String detailedAddress = "장준하기념관 18201-1호";
  private String extraAddress = "(양산동)";
  private boolean status = false;*/

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getGender() {
    return gender;
  }

  public void setGender(String gender) {
    this.gender = gender;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPhoneNumber() {
    return phoneNumber;
  }

  public void setPhoneNumber(String phoneNumber) {
    this.phoneNumber = phoneNumber;
  }

  public String getZipCode() {
    return zipCode;
  }

  public void setZipCode(String zipCode) {
    this.zipCode = zipCode;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public String getDetailedAddress() {
    return detailedAddress;
  }

  public void setDetailedAddress(String detailedAddress) {
    this.detailedAddress = detailedAddress;
  }

  public String getExtraAddress() {
    return extraAddress;
  }

  public void setExtraAddress(String extraAddress) {
    this.extraAddress = extraAddress;
  }

  public boolean isStatus() {
    return status;
  }

  public void setStatus(boolean status) {
    this.status = status;
  }

  public Member() {
  }

  public Member(String id, String password, String name, String gender, String email, String phoneNumber, String zipCode, String address,
      String detailedAddress, String extraAddress, boolean status) {
    this.id = id;
    this.password = password;
    this.name = name;
    this.gender = gender;
    this.email = email;
    this.phoneNumber = phoneNumber;
    this.zipCode = zipCode;
    this.address = address;
    this.detailedAddress = detailedAddress;
    this.extraAddress = extraAddress;
    this.status = status;
  }

  @Override
  public String toString() {
    return "Member{" +
        "id='" + id + '\'' +
        ", password='" + password + '\'' +
        ", name='" + name + '\'' +
        ", gender='" + gender + '\'' +
        ", email='" + email + '\'' +
        ", phoneNumber='" + phoneNumber + '\'' +
        ", zipCode='" + zipCode + '\'' +
        ", address='" + address + '\'' +
        ", detailedAddress='" + detailedAddress + '\'' +
        ", extraAddress='" + extraAddress + '\'' +
        ", status=" + status +
        '}';
  }
}
