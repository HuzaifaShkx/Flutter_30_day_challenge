import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_advance/core/store.dart';
import 'package:tutorial_advance/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;

  AddToCart({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(catalog) ?? false;
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
        shape: MaterialStateProperty.all(StadiumBorder()),
      ),
      onPressed: () {
        if (!isInCart) {
          AddMutation(catalog);
        }
      },
      child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
