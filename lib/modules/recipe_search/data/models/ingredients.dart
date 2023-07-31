import 'package:equatable/equatable.dart';

class Ingredients extends Equatable {
  String? text;
  double? quantity;
  String? measure;
  String? food;
  double? weight;
  String? foodCategory;
  String? foodId;
  String? image;

  Ingredients(
      {this.text,
      this.quantity,
      this.measure,
      this.food,
      this.weight,
      this.foodCategory,
      this.foodId,
      this.image});

  Ingredients.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    quantity = json['quantity'];
    measure = json['measure'];
    food = json['food'];
    weight = json['weight'];
    foodCategory = json['foodCategory'];
    foodId = json['foodId'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = text;
    data['quantity'] = quantity;
    data['measure'] = measure;
    data['food'] = food;
    data['weight'] = weight;
    data['foodCategory'] = foodCategory;
    data['foodId'] = foodId;
    data['image'] = image;
    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        text,
        quantity,
        measure,
        food,
        weight,
        foodCategory,
        foodId,
        image,
      ];
}
