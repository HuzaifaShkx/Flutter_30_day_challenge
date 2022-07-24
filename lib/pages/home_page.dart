import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../models/catalog.dart';

import 'package:velocity_x/velocity_x.dart';
import '../utils/routes.dart';
import '../widget/appbartheme.dart';
import '../widget/home_widgets/catalogList.dart';
import '../widget/home_widgets/catalog_header.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 3));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["Products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    int a = 30;
    String s = "Practice Flutter";

    return Scaffold(
        backgroundColor: context.canvasColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: context.theme.buttonColor,
        onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
        child: Icon(CupertinoIcons.cart,color: Colors.white,),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CatalogHeader(),
            if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              CatalogList().py16().expand()
            else
              CircularProgressIndicator(
                strokeWidth: 12,
              ).centered().expand(),
          ]),
        ),
      ),
    );
  }
}
