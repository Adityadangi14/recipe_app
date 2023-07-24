import 'package:equatable/equatable.dart';
import 'package:recipe_app/modules/recipe_search/data/models/recipe.dart';

class Hits extends Equatable {
  Recipe? recipe;

  Hits({this.recipe});

  Hits.fromJson(Map<String, dynamic> json) {
    recipe =
        json['recipe'] != null ? new Recipe.fromJson(json['recipe']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.recipe != null) {
      data['recipe'] = this.recipe!.toJson();
    }
    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [recipe];
}
