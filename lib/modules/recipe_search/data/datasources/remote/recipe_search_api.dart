import 'package:dio/dio.dart';
import 'package:recipe_app/modules/recipe_search/data/models/response/recipe_search_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:recipe_app/core/utils/constants/api_constants.dart';

part 'recipe_search_api.g.dart';

@RestApi(baseUrl: baseUrl, parser: Parser.JsonSerializable)
abstract class RecipeSearchApi {
  factory RecipeSearchApi(Dio dio, {String baseUrl}) = _RecipeSearchApi;

  @GET('/api/recipes/v2')
  Future<HttpResponse<RecipeSearchResponse>> getRecipeSearchResults({
    @Query('app_id') String? appId,
    @Query('app_key') String? appKey,
    @Query('q') String? query,
    @Query('type') String? type,
  });
}
