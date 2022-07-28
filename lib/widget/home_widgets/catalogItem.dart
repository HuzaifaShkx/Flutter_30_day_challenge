import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/catalog.dart';
import 'add_to_cart.dart';
import 'catalogImage.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog.id.toString()),
          child: CatalogImage(
            image: catalog.image,
          ),
        ),
        Expanded(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.lg.color(context.accentColor).bold.make(),
                catalog.desc.text.textStyle(context.captionStyle).make(),
                10.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog.price}".text.bold.xl.make(),
                    AddToCart(catalog: catalog),
                  ],
                ).pOnly(right: 8),
              ]),
        ),
      ],
    )).color(context.cardColor).roundedLg.square(150).make().py16();
  }
}

