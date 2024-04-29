package org.hello.dbpproject.Repository;

import java.util.Collections;
import java.util.List;
import org.hello.dbpproject.entity.Product;

public class DripBag {
  public static void assignProduct(List<Product> productList) {
    Product dripBagProduct1 = new Product("DripBag", "16", "우간다 시피 아나로빅 내추럴(허니 인퓨즈드)", 20000, "lowkey", 1, "Seasonal");
    dripBagProduct1.setProductDescription("열대과일, 붉은색 계열의 과일 뉘앙스와 꿀의 향긋한 여운이 남는 독특한 커피");
    dripBagProduct1.setCupNote("prune, banana, melon, honey, juicy, unique");
    dripBagProduct1.setCupNote("prune, banana, melon, honey, juicy, unique");
    dripBagProduct1.setImgPath(Collections.singletonList("../images/product-drip-bag.jpg"));

    productList.add(dripBagProduct1);
  }
}
