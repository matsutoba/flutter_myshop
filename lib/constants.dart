import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "メールアドレスを入力してください。";
const String kInvalidEmailError = "メールアドレスの形式が不正です。";
const String kPassNullError = "パスワードを入力してください。";
const String kShortPassError = "パスワードが短すぎます。";
const String kMatchPassError = "パスワードが一致しません。";
const String kNamelNullError = "お名前を入力してください。";
const String kPhoneNumberNullError = "電話番号を入力してください。";
const String kAddressNullError = "住所を入力してください。";
