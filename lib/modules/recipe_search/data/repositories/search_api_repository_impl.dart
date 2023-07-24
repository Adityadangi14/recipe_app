import 'package:recipe_app/core/utils/base_api_repo/base_api_repo.dart';
import 'package:recipe_app/core/utils/resources/data_state.dart';
import 'package:recipe_app/modules/recipe_search/data/datasources/remote/recipe_search_api.dart';
import 'package:recipe_app/modules/recipe_search/data/models/requests/recipe_search_request.dart';
import 'package:recipe_app/modules/recipe_search/data/models/response/recipe_search_response.dart';
import 'package:recipe_app/modules/recipe_search/domain/repository/search_api_repository.dart';

class SearchApiRespositoryImpl extends BaseApiRepository
    implements SearchApiRespository {
  final RecipeSearchApi _recipeSearchApi;

  SearchApiRespositoryImpl(this._recipeSearchApi);
  @override
  Future<DataState<RecipeSearchResponse>> getSearchedRecipes(
      {required RecipeSearchRequest request}) {
    return getStateOf<RecipeSearchResponse>(
        request: () => _recipeSearchApi.getRecipeSearchResults(
              appId: request.appId,
              appKey: request.appKey,
              query: request.query,
              type: request.type,
            ));
  }
}
