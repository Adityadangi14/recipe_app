part of 'recipe_search_bloc.dart';

abstract class RecipeSearchEvent extends Equatable {
  const RecipeSearchEvent();

  @override
  List<Object> get props => [];
}

class SearchQueryEvent extends RecipeSearchEvent {
  final String query;
  const SearchQueryEvent(this.query);
}
