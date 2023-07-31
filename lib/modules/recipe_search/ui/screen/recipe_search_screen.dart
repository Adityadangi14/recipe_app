import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/modules/recipe_search/ui/controllers/bloc/recipe_search_bloc.dart';

class RecipeSearchScreen extends StatelessWidget {
  const RecipeSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text(
          'Search Recipe',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: BlocBuilder<RecipeSearchBloc, RecipeSearchState>(
        builder: (context, state) {
          return Column(children: [SearchField()]);
        },
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBar(
          trailing: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        LinearProgressIndicator(
          backgroundColor: Colors.transparent,
        ),
      ],
    );
  }
}
