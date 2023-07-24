import 'package:recipe_app/core/utils/resources/data_state.dart';
import 'package:recipe_app/core/utils/usecase/usecase.dart';
import 'package:recipe_app/modules/recipe_search/data/models/requests/recipe_search_request.dart';
import 'package:recipe_app/modules/recipe_search/domain/enitity/recipe_search_entity.dart';
import 'package:recipe_app/modules/recipe_search/domain/repository/search_api_repository.dart';

class SearchApiUsecase extends Usecase {
  final SearchApiRespository searchApiRespository;
  SearchApiUsecase({required this.searchApiRespository});
  @override
  Future<DataState<RecipeSearchEntity>> call(params) {
    return searchApiRespository.getSearchedRecipes(
        request: RecipeSearchRequest(query: params['query']));
  }
}
