class CatalogModel {
  static List<Item> items = <Item>[
    Item(1, "Techno Pro", "Techno Smart set", 30000, "#2471A3",
        "https://images.unsplash.com/photo-1649515530664-7a3150983c7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dGVjaG5vJTIwbW9iaWxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
    Item(2, "Techno Pro 2", "Techno Smart set", 40000, "#BA4A00",
        "https://images.unsplash.com/photo-1575543419900-b3482ff8e69e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG1vYmlsZSUyMHBob25lJTIwc2V0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;
  

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}
