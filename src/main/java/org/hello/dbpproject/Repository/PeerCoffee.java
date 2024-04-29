package org.hello.dbpproject.Repository;

import java.util.Collections;
import java.util.List;
import org.hello.dbpproject.entity.Product;

public class PeerCoffee {

  public static void assignProduct(List<Product> productList) {
    Product peerProduct1 = new Product("Blend", "1", "DIANA", 18000, "PeerCoffee", 1, "Seasonal");
    peerProduct1.setProductDescription("빨강머리앤의 친구 다이애나 베리 봄의 소녀같이 딸기향이 나는 커피.");
    peerProduct1.setCupNote("Strawberry, Milk, chocolate, Cream");
    peerProduct1.setImgPath(Collections.singletonList("../images/product-blend.jpg"));
    productList.add(peerProduct1);

    Product peerProduct2 = new Product("Blend", "2", "ARSENE", 19000, "PeerCoffee", 1, "Seasonal");
    peerProduct2.setProductDescription("피어커피로스터스의 미스테리박스.");
    peerProduct2.setCupNote("Milk, chocolate, Nuts, Black, tea");
    peerProduct2.setImgPath(Collections.singletonList("../images/product-blend.jpg"));
    productList.add(peerProduct2);

    Product peerProduct3 = new Product("Blend", "3", "PEER TO PEER", 17000, "PeerCoffee", 1, "AllSeason");
    peerProduct3.setProductDescription("친구에게 전해주듯 편안하며, 고소하고, 부드러운 커피.");
    peerProduct3.setCupNote("Milk, chocolate, Nuts, Black, tea");
    peerProduct3.setImgPath(Collections.singletonList("../images/product-blend.jpg"));
    productList.add(peerProduct3);

    Product peerProduct4 = new Product("Single Origin", "4", "콜롬비아 엘 트리운포 시드라 세미 워시드 ", 17000, "PeerCoffee", 1, "Seasonal");
    peerProduct4.setProductDescription("농장 엘트리운포는 승리라는 뜻으로 노력의 보상을 뜻합니다.");
    peerProduct4.setCupNote("Ylang Ylang, Mandarine, Jasmine, Lychee, Syrupy");
    peerProduct4.setImgPath(Collections.singletonList("../images/product-single-origin.jpg"));
    productList.add(peerProduct4);

    Product peerProduct5 = new Product("Blend", "5", "EL CAMINO", 15000, "PeerCoffee", 1, "AllSeason");
    peerProduct5.setProductDescription("길을 잃고 헤매이는 이들에게 작은 표지판이 되었으면 하는 커피.");
    peerProduct5.setCupNote("Bitter, sweet, Nut, Cacao");
    peerProduct5.setImgPath(Collections.singletonList("../images/product-blend.jpg"));
    productList.add(peerProduct5);
  }
}
