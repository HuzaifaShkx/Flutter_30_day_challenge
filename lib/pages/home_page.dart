import 'package:flutter/material.dart';

import '../models/catalog.dart';
import '../widget/drawer.dart';
import '../widget/item_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[1]);
    int a = 30;
    String s = "Practice Flutter";

    return Scaffold(
      appBar: AppBar(
        title: Text("Practice Flutter"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: Mydrawer(),
    );
  }
}
