package org.hello.dbpproject.entity;

import java.util.List;

public class ProductDAO {

  private String productCategory;
  private String productId;
  private String productName;
  private Integer productPrice;
  private String productDescription;
  private String productRoastery;
  private long productsInStock;
  private String productCondition;
  private String cupNote;
  private List<String> imagePath;

  public List<String> getImagePath() {
    return imagePath;
  }

  public void setImagePath(List<String> imagePath) {
    this.imagePath = imagePath;
  }

  public String getCupNote() {
    return cupNote;
  }

  public void setCupNote(String cupNote) {
    this.cupNote = cupNote;
  }

  public String getProductCategory() {
    return productCategory;
  }

  public void setProductCategory(String productCategory) {
    this.productCategory = productCategory;
  }

  public String getProductId() {
    return productId;
  }

  public void setProductId(String productId) {
    this.productId = productId;
  }

  public String getProductName() {
    return productName;
  }

  public void setProductName(String productName) {
    this.productName = productName;
  }

  public Integer getProductPrice() {
    return productPrice;
  }

  public void setProductPrice(Integer productPrice) {
    this.productPrice = productPrice;
  }

  public String getProductDescription() {
    return productDescription;
  }

  public void setProductDescription(String productDescription) {
    this.productDescription = productDescription;
  }

  public String getProductRoastery() {
    return productRoastery;
  }

  public void setProductRoastery(String productRoastery) {
    this.productRoastery = productRoastery;
  }

  public long getProductsInStock() {
    return productsInStock;
  }

  public void setProductsInStock(long productsInStock) {
    this.productsInStock = productsInStock;
  }

  public String getProductCondition() {
    return productCondition;
  }

  public void setProductCondition(String productCondition) {
    this.productCondition = productCondition;
  }

  public ProductDAO(String productCategory, String productId, String productName, Integer productPrice, String productDescription,
      String productRoastery, long productsInStock, String productCondition, String cupNote, List<String> imagePath) {
    this.productCategory = productCategory;
    this.productId = productId;
    this.productName = productName;
    this.productPrice = productPrice;
    this.productDescription = productDescription;
    this.productRoastery = productRoastery;
    this.productsInStock = productsInStock;
    this.productCondition = productCondition;
    this.cupNote = cupNote;
    this.imagePath = imagePath;
  }

  @Override
  public String toString() {
    return "ProductDAO{" +
        "productCategory='" + productCategory + '\'' +
        ", productId='" + productId + '\'' +
        ", productName='" + productName + '\'' +
        ", productPrice=" + productPrice +
        ", productDescription='" + productDescription + '\'' +
        ", productRoastery='" + productRoastery + '\'' +
        ", productsInStock=" + productsInStock +
        ", productCondition='" + productCondition + '\'' +
        ", cupNote='" + cupNote + '\'' +
        ", imagePath=" + imagePath +
        '}';
  }
}
