import 'package:flutter/material.dart';
import 'package:tutorial_advance/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  static final cartModel = CartModel._internal();
  CartModel._internal();

  factory CartModel() => cartModel;

  // Catalog field
  late CatalogModel _catalog;

// Collection of id's => Store ids of each item

  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  //get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
