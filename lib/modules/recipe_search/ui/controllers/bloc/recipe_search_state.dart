part of 'recipe_search_bloc.dart';

abstract class RecipeSearchState extends Equatable {
  const RecipeSearchState();

  @override
  List<Object> get props => [];
}

class RecipeSearchInitial extends RecipeSearchState {}

class RecipeSearchLoding extends RecipeSearchState {}

class RecipeSearchSuccessfull extends RecipeSearchState {
  final RecipeSearchEntity recipeSearchEntity;

  const RecipeSearchSuccessfull(this.recipeSearchEntity);
}

class RecipeSearchFailed extends RecipeSearchState {
  final Exception exception;

  const RecipeSearchFailed(this.exception);
}
