import 'package:flutter/material.dart';
import 'package:shop_app/screens/profile/components/profile_menu.dart';
import 'package:shop_app/screens/profile/components/profile_pic.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(height: 20),
        ProfileMenu(
          text: "マイアカウント",
          icon: "assets/icons/User Icon.svg",
          press: () {},
        ),
        ProfileMenu(
          text: "通知設定",
          icon: "assets/icons/Bell.svg",
          press: () {},
        ),
        ProfileMenu(
          text: "設定",
          icon: "assets/icons/Settings.svg",
          press: () {},
        ),
        ProfileMenu(
          text: "ヘルプセンター",
          icon: "assets/icons/Question mark.svg",
          press: () {},
        ),
        ProfileMenu(
          text: "ログアウト",
          icon: "assets/icons/Log out.svg",
          press: () {},
        ),
      ],
    );
  }
}
