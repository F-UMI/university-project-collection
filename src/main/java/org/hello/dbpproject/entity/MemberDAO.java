package org.hello.dbpproject.entity;

public class MemberDAO {

  private String id;
  private String password;
  private String name;
  private String gender;
  private String email;
  private String phoneNumber;
  private String zipCode;
  private String address;
  private String detailedAddress;
  private String extraAddress;
  private boolean status;

  public MemberDAO(String id, String password, String name, String gender, String email, String phoneNumber, String zipCode, String address,
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


  @Override
  public String toString() {
    return "MemberDAO{" +
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
