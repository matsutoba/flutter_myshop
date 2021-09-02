import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/home/components/section_title.dart';
import 'package:shop_app/size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SectionTitle(
        text: "人気商品",
        press: () {},
      ),
      SizedBox(
        height: getProportionateScreenHeight(20),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...List.generate(
              demoProducts.length,
              (index) => ProductCard(
                product: demoProducts[index],
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(20),
            )
          ],
        ),
      ),
    ]);
  }
}
