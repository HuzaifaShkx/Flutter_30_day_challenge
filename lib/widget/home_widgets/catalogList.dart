import 'package:flutter/cupertino.dart';
import 'package:tutorial_advance/pages/home_detail_page.dart';
import '../../models/catalog.dart';
import 'catalogItem.dart';
import 'package:flutter/material.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final Catalog = CatalogModel.getByPosition(index);
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetailPage(
                          catalog: Catalog,
                        ))),
            child: CatalogItem(catalog: Catalog));
      },
    );
  }
}
