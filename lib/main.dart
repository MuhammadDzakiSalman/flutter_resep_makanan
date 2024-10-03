import 'package:flutter/material.dart';
// import 'models/recipe.dart';

import 'screens/recipe_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resep Makanan',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue), fontFamily: 'Poppins', useMaterial3: false),
      home: RecipeListScreen(),
    );
  }
}
