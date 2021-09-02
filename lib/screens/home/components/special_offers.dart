import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/section_title.dart';
import 'package:shop_app/size_config.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "スペシャルセール",
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                category: "スマートフォン",
                image: "assets/images/Image Banner 2.png",
                numOfBrands: 18,
                press: () {},
              ),
              SpecialOfferCard(
                category: "ファッション",
                image: "assets/images/Image Banner 3.png",
                numOfBrands: 24,
                press: () {},
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category;
  final String image;
  final int numOfBrands;
  final GestureTapCallback press;

  // TODO: Tap処理を入れる

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(20),
      ),
      child: SizedBox(
        width: getProportionateScreenWidth(242),
        height: getProportionateScreenHeight(100),
        // 角丸で画像を表示する
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                // グラデーションの設定
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF343434).withOpacity(0.4),
                      Color(0xFF343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15),
                    vertical: getProportionateScreenHeight(10)),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: "$category\n",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "$numOfBrands種類",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
