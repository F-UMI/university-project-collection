package org.hello.dbpproject.entity;

import java.io.Serializable;

public class Product implements Serializable {

  private String productId;
  private String productName;
  private Integer productPrice;
  private String productDescription;
  private String productRoastery;
  private String productCategory;
  private long productsInStock;
  private String productCondition;

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

  public String getProductCategory() {
    return productCategory;
  }

  public void setProductCategory(String productCategory) {
    this.productCategory = productCategory;
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
}
