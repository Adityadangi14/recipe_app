import 'package:flutter/material.dart';

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
      body: Column(children: [SearchField()]),
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
        )
      ],
    );
  }
}
