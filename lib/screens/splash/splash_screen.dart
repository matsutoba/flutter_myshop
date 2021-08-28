import 'package:flutter/material.dart';
import 'package:shop_app/screens/components/body.dart';

import '../../size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // サイズ調整Configを使うので起動時に呼び出し必要
    SizeConfig().init(context);
    return Scaffold(body: Body());
  }
}
