import 'package:equatable/equatable.dart';
import 'package:recipe_app/modules/recipe_search/data/models/recipe.dart';

class Hits extends Equatable {
  Recipe? recipe;

  Hits({this.recipe});

  Hits.fromJson(Map<String, dynamic> json) {
    recipe = json['recipe'] != null ? Recipe.fromJson(json['recipe']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (recipe != null) {
      data['recipe'] = recipe!.toJson();
    }
    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [recipe];
}
