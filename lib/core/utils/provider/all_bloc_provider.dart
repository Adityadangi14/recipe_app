import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/utils/service_locator/locator.dart';
import 'package:recipe_app/modules/recipe_search/ui/controllers/bloc/recipe_search_bloc.dart';

get allBlocProvider => [
      BlocProvider<RecipeSearchBloc>(
        create: (_) => locator(),
      )
    ];
