import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_app/core/utils/resources/data_state.dart';
import 'package:recipe_app/modules/recipe_search/domain/enitity/recipe_search_entity.dart';
import 'package:recipe_app/modules/recipe_search/domain/usercase/search_api_usecase.dart';

part 'recipe_search_event.dart';
part 'recipe_search_state.dart';

class RecipeSearchBloc extends Bloc<RecipeSearchEvent, RecipeSearchState> {
  final SearchApiUsecase searchApiUsecase;
  RecipeSearchBloc(this.searchApiUsecase) : super(RecipeSearchInitial()) {
    on<SearchQueryEvent>((event, emit) async {
      emit(RecipeSearchLoding());
      try {
        DataState<RecipeSearchEntity> response =
            await searchApiUsecase.call({"query": event.query});
        if (response.data != null) {
          emit(RecipeSearchSuccessfull(response.data!));
        } else {
          emit(RecipeSearchFailed(Exception(response.error)));
        }
      } on Exception catch (e) {
        emit(RecipeSearchFailed(e));
        rethrow;
      }
    });
  }
}
