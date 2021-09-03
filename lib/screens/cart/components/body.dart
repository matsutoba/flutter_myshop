import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:shop_app/screens/cart/components/cart_item_card.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      // リスト表示
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: buildDissmisableItem(index),
        ),
      ),
    );
  }

  Dismissible buildDissmisableItem(int index) {
    return Dismissible(
      key: Key(demoCarts[index].product.id.toString()),
      direction: DismissDirection.endToStart, // 後ろからのスワイプだけに限定
      background: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            // スワイプしたときの背景色
            color: Color(0xFFFFE6E6),
            borderRadius: BorderRadius.circular(15),
          ),
          // スワイプしたときに見えるウィジェット
          child: Row(
            children: [Spacer(), SvgPicture.asset("assets/icons/Trash.svg")],
          )),
      child: CartItemCard(cart: demoCarts[index]),
      onDismissed: (direction) {
        setState(() {
          demoCarts.removeAt(index);
        });
      },
    );
  }
}
