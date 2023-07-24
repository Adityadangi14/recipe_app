import 'package:recipe_app/core/utils/resources/data_state.dart';
import 'package:recipe_app/modules/recipe_search/data/models/requests/recipe_search_request.dart';
import 'package:recipe_app/modules/recipe_search/data/models/response/recipe_search_response.dart';

abstract class SearchApiRespository {
  Future<DataState<RecipeSearchResponse>> getSearchedRecipes(
      {required RecipeSearchRequest request});
}
