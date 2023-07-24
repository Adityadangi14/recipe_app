import 'package:equatable/equatable.dart';
import 'package:recipe_app/modules/recipe_search/data/models/hits.dart';
import 'package:recipe_app/modules/recipe_search/domain/enitity/recipe_search_entity.dart';

class RecipeSearchResponse extends RecipeSearchEntity {
  int? from;
  int? to;
  int? count;

  List<Hits>? hits;

  RecipeSearchResponse({this.from, this.to, this.count, this.hits})
      : super(hits: hits);

  RecipeSearchResponse.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    count = json['count'];

    if (json['hits'] != null) {
      hits = <Hits>[];
      json['hits'].forEach((v) {
        hits!.add(new Hits.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['from'] = this.from;
    data['to'] = this.to;
    data['count'] = this.count;
    if (this.hits != null) {
      data['hits'] = this.hits!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
