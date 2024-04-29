package org.hello.dbpproject.Repository;

import java.util.Collections;
import java.util.List;
import org.hello.dbpproject.entity.Product;

public class Lowkey {
  public static void assignProduct(List<Product> productList) {
    Product lowkeyProduct1 = new Product("Single Origin", "10", "우간다 시피 아나로빅 내추럴(허니 인퓨즈드)", 20000, "lowkey", 1, "Seasonal");
    lowkeyProduct1.setProductDescription("열대과일, 붉은색 계열의 과일 뉘앙스와 꿀의 향긋한 여운이 남는 독특한 커피");
    lowkeyProduct1.setCupNote("prune, banana, melon, honey, juicy, unique");
    lowkeyProduct1.setImgPath(Collections.singletonList("../images/product-single-origin.jpg"));
    productList.add(lowkeyProduct1);

    Product lowkeyProduct2 = new Product("Single Origin", "11", "에티오피아 하마쇼 인터벌 워시드", 19000, "lowkey", 1, "Seasonal");
    lowkeyProduct2.setProductDescription("복숭아, 레몬글라아스의 뉘앙스가 강렬하게 느껴지는 커피");
    lowkeyProduct2.setCupNote("bergamot, lemongrass, peach, darjeeling, complex, juicy, elegant, lingering");
    lowkeyProduct2.setImgPath(Collections.singletonList("../images/product-single-origin.jpg"));
    productList.add(lowkeyProduct2);

    Product lowkeyProduct3 = new Product("Blend", "12", "로우키 블렌드", 20000, "lowkey", 1, "AllSeason");
    lowkeyProduct3.setProductDescription("고소하고 담백한 단맛이 특징이며 은은한 산미");
    lowkeyProduct3.setCupNote("Milk chocolate, Nuts, Black, caramel");
    lowkeyProduct3.setImgPath(Collections.singletonList("../images/product-blend.jpg"));
    productList.add(lowkeyProduct3);
  }
}
