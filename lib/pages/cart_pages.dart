import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widget/appbartheme.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      
    );
  }
}