import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key,
    required this.iconData,
    required this.press,
  }) : super(key: key);

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            // 高さ0
            elevation: 0,
            padding: EdgeInsets.zero,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          ),
          onPressed: press,
          child: Icon(
            iconData,
            color: kSecondaryColor,
          ),
        ));
  }
}
