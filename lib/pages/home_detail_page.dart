import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';
import '../widget/appbartheme.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(MyTheme.darkbluishColor),
                shape: MaterialStateProperty.all(StadiumBorder()),
              ),
              onPressed: () {},
              child: "Add To Cart".text.make(),
            ).wh(120, 50)
          ],
        ).pOnly(right: 8).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(
              catalog.image,
            ),
          ).h32(context),
          Expanded(
              child: VxArc(
                  height: 30,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    width: context.screenWidth,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          catalog.name.text.xl4
                              .color(MyTheme.darkbluishColor)
                              .bold
                              .make(),
                          catalog.desc.text.lg
                              .textStyle(context.captionStyle)
                              .make(),
                          10.heightBox,
                          "Of angels or you bird the heard, muttered linking maiden only shorn the he my tinkled, aidenn have our followed crest maiden unmerciful soul forgotten, that my the fowl at the my yet let. Lonely let above tufted his, soul."
                              .text
                              .textStyle(context.captionStyle)
                              .make()
                              .p16(),
                        ],
                      ).py64(),
                    ),
                  )))
        ]),
      ),
    );
  }
}
