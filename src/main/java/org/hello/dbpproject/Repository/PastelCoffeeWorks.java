package org.hello.dbpproject.Repository;

import java.util.Collections;
import java.util.List;
import org.hello.dbpproject.entity.Product;

public class PastelCoffeeWorks {
  public static void assignProduct(List<Product> productList) {
    Product pastelProduct1 = new Product("Blend", "6", "다크나이트", 16000, "PastelCoffeeWorks", 1, "AllSeason");
    pastelProduct1.setProductDescription("특유의 견과류 향이 아주 풍부했던 커피를 더해줘, 다크나이트 고유의 정체성은 유지하면서도 보다 다채로운 향미");
    pastelProduct1.setCupNote("볶은 헤이즐넛, 아몬드, 카카오매스, 천도복숭아, 카카오닙스");
    pastelProduct1.setImgPath(Collections.singletonList("../images/product-blend.jpg"));
    productList.add(pastelProduct1);

    Product pastelProduct2 = new Product("Blend", "7", "블랙슈가", 14000, "PastelCoffeeWorks", 1, "AllSeason");
    pastelProduct2.setProductDescription("살구를 연상시키는 산미와 마신 뒤 길게 이어지는 밀크 초콜릿의 풍부한 애프터 테이스트가 매력적인 커피");
    pastelProduct2.setCupNote("블랙슈가, 구운견과류, 건과일, 밀크초콜릿");
    pastelProduct2.setImgPath(Collections.singletonList("../images/product-blend.jpg"));
    productList.add(pastelProduct2);

    Product pastelProduct3 = new Product("Single Origin", "8", "인도 바드라", 14500, "PastelCoffeeWorks", 1, "Seasonal");
    pastelProduct3.setCupNote("Roasted Barley, Dried Apricot, Tangerine, Brown Sugar");
    pastelProduct3.setProductDescription("은은한 볶은 보리의 향과 황설탕의 단맛, 그리고 아라비카 품종이기 때문에 건살구, 더 식으면 귤의 산미까지 느낄 수 있죠.");
    pastelProduct3.setImgPath(Collections.singletonList("../images/product-single-origin.jpg"));
    productList.add(pastelProduct3);

    Product pastelProduct4 = new Product("Single Origin", "9", "디카프 디카페인", 16500, "PastelCoffeeWorks", 1, "AllSeason");
    pastelProduct4.setProductDescription("몰라시스의 농밀한 단맛과 향신료의 매콤, 쌉쌀한 향미가 독특하고 매력적");
    pastelProduct4.setCupNote("몰라리스, 향신료, 건자두, 콜라, 다크초콜릿");
    pastelProduct4.setImgPath(Collections.singletonList("../images/product-single-origin.jpg"));
    productList.add(pastelProduct4);

  }
}
