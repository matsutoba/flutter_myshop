import 'package:flutter/material.dart';
import 'package:shop_app/components/social_card.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/sign_up/components/sign_up_form.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            Text(
              "アカウント登録",
              style: headingStyle,
            ),
            Text(
              "アカウント情報を入力してください。 \nまたはソーシャルアカウントでも登録できます。",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.07),
            SignUpForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.07),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                  icon: "assets/icons/google-icon.svg",
                  press: () {},
                ),
                SocialCard(
                  icon: "assets/icons/facebook-2.svg",
                  press: () {},
                ),
                SocialCard(
                  icon: "assets/icons/twitter.svg",
                  press: () {},
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Text(
              "利用規約に同意して登録してください。",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
