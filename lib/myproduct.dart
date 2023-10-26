import 'dart:convert';

MensModal mensModelFromJson(String str) =>
    MensModal.fromJson(json.decode(str));

String mensModelToJson(MensModal data) => json.encode(data.toJson());

class MensModal {
  MensModal({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.isFavourite,
  });
  String id;
  String name;
  String image;
  String description;
  String price;
  bool isFavourite;
  factory MensModal.fromJson(Map<String, dynamic> json) => MensModal(
        id: json["id"],
        name: json["name"],
         image: json["image"],
         description: json["description"],
          price: json["price"],
         isFavourite: false,
        
        
        
        
      );
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "description":description,
        "price": price,
        "isFavourite":isFavourite,
      };
}
