import 'package:equatable/equatable.dart';
import 'package:recipe_app/modules/recipe_search/data/models/images.dart';
import 'package:recipe_app/modules/recipe_search/data/models/ingredients.dart';

class Recipe extends Equatable {
  String? uri;
  String? label;
  String? image;
  Images? images;
  String? source;
  String? url;
  String? shareAs;
  int? yield;
  List<String>? dietLabels;
  List<String>? healthLabels;
  List<String>? cautions;
  List<String>? ingredientLines;
  List<Ingredients>? ingredients;
  double? calories;
  double? totalCO2Emissions;
  String? co2EmissionsClass;
  double? totalWeight;
  double? totalTime;
  List<String>? cuisineType;
  List<String>? mealType;
  List<String>? dishType;

  Recipe({
    this.uri,
    this.label,
    this.image,
    this.images,
    this.source,
    this.url,
    this.shareAs,
    this.yield,
    this.dietLabels,
    this.healthLabels,
    this.cautions,
    this.ingredientLines,
    this.ingredients,
    this.calories,
    this.totalCO2Emissions,
    this.co2EmissionsClass,
    this.totalWeight,
    this.totalTime,
    this.cuisineType,
    this.mealType,
    this.dishType,
  });

  Recipe.fromJson(Map<String, dynamic> json) {
    uri = json['uri'];
    label = json['label'];
    image = json['image'];
    images =
        json['images'] != null ? new Images.fromJson(json['images']) : null;
    source = json['source'];
    url = json['url'];
    shareAs = json['shareAs'];
    yield = json['yield'];
    dietLabels = json['dietLabels'].cast<String>();
    healthLabels = json['healthLabels'].cast<String>();
    cautions = json['cautions'].cast<String>();
    ingredientLines = json['ingredientLines'].cast<String>();
    if (json['ingredients'] != null) {
      ingredients = <Ingredients>[];
      json['ingredients'].forEach((v) {
        ingredients!.add(new Ingredients.fromJson(v));
      });
    }
    calories = json['calories'];
    totalCO2Emissions = json['totalCO2Emissions'];
    co2EmissionsClass = json['co2EmissionsClass'];
    totalWeight = json['totalWeight'];
    totalTime = json['totalTime'];
    cuisineType = json['cuisineType'].cast<String>();
    mealType = json['mealType'].cast<String>();
    dishType = json['dishType'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uri'] = this.uri;
    data['label'] = this.label;
    data['image'] = this.image;
    if (this.images != null) {
      data['images'] = this.images!.toJson();
    }
    data['source'] = this.source;
    data['url'] = this.url;
    data['shareAs'] = this.shareAs;
    data['yield'] = this.yield;
    data['dietLabels'] = this.dietLabels;
    data['healthLabels'] = this.healthLabels;
    data['cautions'] = this.cautions;
    data['ingredientLines'] = this.ingredientLines;
    if (this.ingredients != null) {
      data['ingredients'] = this.ingredients!.map((v) => v.toJson()).toList();
    }
    data['calories'] = this.calories;
    data['totalCO2Emissions'] = this.totalCO2Emissions;
    data['co2EmissionsClass'] = this.co2EmissionsClass;
    data['totalWeight'] = this.totalWeight;
    data['totalTime'] = this.totalTime;
    data['cuisineType'] = this.cuisineType;
    data['mealType'] = this.mealType;
    data['dishType'] = this.dishType;

    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        uri,
        label,
        image,
        images,
        source,
        url,
        shareAs,
        yield,
        dietLabels,
        healthLabels,
        cautions,
        ingredientLines,
        ingredients,
        calories,
        totalCO2Emissions,
        co2EmissionsClass,
        totalWeight,
        totalTime,
        cuisineType,
        mealType,
        dishType,
      ];
}
