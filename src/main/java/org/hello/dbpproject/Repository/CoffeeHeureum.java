package org.hello.dbpproject.Repository;

import java.util.Collections;
import java.util.List;
import org.hello.dbpproject.entity.Product;

public class CoffeeHeureum {
  public static void assignProduct(List<Product> productList) {
    Product coffeeHeureumProduct1 = new Product("Blend", "13", "의식의 흐름 ver.02", 27000, "CoffeeHeureum", 1, "AllSeason");
    coffeeHeureumProduct1.setProductDescription("WBB Black First place");
    coffeeHeureumProduct1.setCupNote("peach, mixed berries, Long After, coconut, winey, tropical fruit");
    coffeeHeureumProduct1.setImgPath(Collections.singletonList("../images/product-blend.jpg"));
    productList.add(coffeeHeureumProduct1);

    Product coffeeHeureumProduct2 = new Product("Blend", "14", "케냐 AB Top 엠부 쿠씨엔다 워시드 K.N.T.O.H 1위", 18000, "CoffeeHeureum", 1, "Seasonal");
    coffeeHeureumProduct2.setProductDescription("");
    coffeeHeureumProduct2.setCupNote("#MANDARIN  #BLACKSUGAR  #BLACK BERRY #CRAN BERRY #PISTACHIO");
    coffeeHeureumProduct2.setImgPath(Collections.singletonList("../images/product-blend.jpg"));
    productList.add(coffeeHeureumProduct2);

    Product coffeeHeureumProduct3 = new Product("Single Origin", "15", "에티오피아 게샤빌리지 EF-38", 29900, "CoffeeHeureum", 1, "Seasonal");
    coffeeHeureumProduct3.setProductDescription("");
    coffeeHeureumProduct3.setCupNote("#Juicy #Peach #Jasmine #Apricot #Cherry #Plum");
    coffeeHeureumProduct3.setImgPath(Collections.singletonList("../images/product-single-origin.jpg"));
    productList.add(coffeeHeureumProduct3);


  }
}
