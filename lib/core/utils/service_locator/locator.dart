import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:recipe_app/core/utils/base_api_repo/base_api_repo.dart';
import 'package:recipe_app/core/utils/constants/api_constants.dart';
import 'package:recipe_app/core/utils/resources/data_state.dart';
import 'package:recipe_app/modules/recipe_search/data/datasources/remote/recipe_search_api.dart';
import 'package:recipe_app/modules/recipe_search/data/repositories/search_api_repository_impl.dart';
import 'package:recipe_app/modules/recipe_search/domain/repository/search_api_repository.dart';
import 'package:recipe_app/modules/recipe_search/domain/usercase/search_api_usecase.dart';
import 'package:recipe_app/modules/recipe_search/ui/controllers/bloc/recipe_search_bloc.dart';

final locator = GetIt.instance;

void setup() {
  //bloc

  //services
  locator.registerLazySingleton(() => RecipeSearchApi(Dio(), baseUrl: baseUrl));
  locator.registerLazySingleton<SearchApiRespository>(
      () => SearchApiRespositoryImpl(locator()));
  locator.registerLazySingleton(
      () => SearchApiUsecase(searchApiRespository: locator()));

  locator.registerFactory(() => RecipeSearchBloc(locator()));
}
