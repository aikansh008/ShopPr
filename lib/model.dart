import 'dart:convert';

ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.isFavourite,
  });
  String image;
  String name;
  String id;
  String price;
  String description;
  bool isFavourite;
  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        name: json["name"],
         image: json["image"],
          price: json["price"],
         description: json["description"],
         isFavourite: false,
        
        
        
        
      );
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
         "price": price,
          "description":description,
           "isFavourite":isFavourite,
      };
}
