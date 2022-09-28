class ModelShop {
  String id;
  String name;
  String description;
  int price;
  String image;

  ModelShop({
    required this.id,
    required this.name,
    this.description = '',
    required this.price,
    required this.image,
  });
}
