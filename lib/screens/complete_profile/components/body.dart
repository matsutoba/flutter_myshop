import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/complete_profile/components/complete_profile_form.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Text(
                "プロフィール入力",
                style: headingStyle,
              ),
              Text(
                "プロフィールを入力してください。\nソーシャルアカウントでも登録できます。",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              CompleteProfileForm(),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Text(
                "利用規約に同意して登録してください。",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
