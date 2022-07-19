class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}

List<Item> product = <Item>[
  Item("p1", "Techno Pro", "Techno Smart set", 30000, "#2471A3", " "),
  Item("p1", "Techno Pro 2", "Techno Smart set", 40000, "#BA4A00", " "),
];
