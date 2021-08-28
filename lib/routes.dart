import 'package:flutter/material.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';

// ルート名をつけてウィジェットを取り出す
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
};
