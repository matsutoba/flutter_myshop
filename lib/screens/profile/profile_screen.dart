import 'package:flutter/material.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/screens/profile/components/body.dart';
import 'package:shop_app/screens/profile/components/custom_bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("プロフィール"),
      ),
      body: Body(),
      // 画面下部メニュー
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
