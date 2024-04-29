package org.hello.dbpproject.Repository;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import org.hello.dbpproject.entity.Product;

public class ProductRepository {

  private List<Product> productList = new ArrayList<>();

  private static final ProductRepository instance = new ProductRepository();

  public ProductRepository() {
    PeerCoffee.assignProduct(productList);
    CoffeeHeureum.assignProduct(productList);
    Lowkey.assignProduct(productList);
    PastelCoffeeWorks.assignProduct(productList);
    DripBag.assignProduct(productList);
  }

  public List<Product> getAllProducts() {
    return productList;
  }

  public List<Product> getProductByRoastery(String productRoastery) {
    return Optional.ofNullable(productList).orElseGet(Collections::emptyList).stream()
        .filter(product -> product.getProductRoastery().equals(productRoastery)).collect(Collectors.toList());
  }

  public List<Product> getProductByCondition(String productCondition) {
    return Optional.ofNullable(productList).orElseGet(Collections::emptyList).stream()
        .filter(product -> product.getProductCondition().equals(productCondition)).collect(Collectors.toList());
  }
  public List<Product> getProductByCategory(String productCategory) {
    return Optional.ofNullable(productList).orElseGet(Collections::emptyList).stream()
        .filter(product -> product.getProductCategory().equals(productCategory)).collect(Collectors.toList());
  }

  public Product getProductById(String productId) {
    return productList.stream().filter(product -> product.getProductId().equals(productId)).findFirst().orElse(null);
  }


  public void addProduct(Product product) {
    productList.add(product);
    System.out.println("성공적으로 저장되었습니다. id : " + this.getListSize());
    System.out.println("제품 정보 :"+ product);

  }

  public int getListSize() {
    return productList.size();
  }

  public static ProductRepository getInstance() {
    return instance;
  }

}
