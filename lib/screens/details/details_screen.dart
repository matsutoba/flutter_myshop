import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/body.dart';
import 'package:shop_app/screens/details/components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    // Navigation.push で遷移するときに渡された argument を取得する
    final arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailArguments;

    return Scaffold(
      // AppBarのタイトルをつけないと戻るボタンが出ないので、
      // leading によって自分で戻るボタンを表示
      backgroundColor: Color(0xFFF5F6F9),
      // デフォルトのAppBarは大きさが足りないので、CustomAppBar を作成する
      appBar: CustomAppBar(rating: arguments.product.rating),
      // 子コンポーネントにパラメータを渡す
      body: Body(
        product: arguments.product,
      ),
    );
  }
}

// 詳細画面に遷移するときのパラメータ
class ProductDetailArguments {
  final Product product;

  ProductDetailArguments({required this.product});
}
