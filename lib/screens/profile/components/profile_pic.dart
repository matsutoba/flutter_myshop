import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      // 円形の表示ができるウィジェット
      child: Stack(
        clipBehavior: Clip.none, // overflow: OverFlow.visiable は非推奨
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/Profile Image.png"),
          ),
          Positioned(
            bottom: 0,
            right: -12,
            child: SizedBox(
              height: 46,
              width: 46,
              child: ElevatedButton(
                onPressed: () {},
                child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  // 丸いボタンにする
                  shape: CircleBorder(
                    side: BorderSide(color: Colors.white),
                  ),
                  // ボタンの背景色
                  primary: Color(0xFFF5F6F9),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
