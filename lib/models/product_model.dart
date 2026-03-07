

class ProductModel {
  final int id;
  final String name;
  final double price;
  final String description;
  final String image;
  final String category;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    required this.category,
  });

  factory ProductModel.fromjson(Map jsonData) {
    return ProductModel(
      id: jsonData["id"],
      name: jsonData["title"],
      price: jsonData["price"],
      description: jsonData["description"],
      image: jsonData["image"],
      category: jsonData["category"],
    );
  }
}
