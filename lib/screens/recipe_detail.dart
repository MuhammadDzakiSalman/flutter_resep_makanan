import 'package:flutter/material.dart';
import '../models/recipe.dart';

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(recipe.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                recipe.imageAsset,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              Text(recipe.title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Text('Deskripsi: ${recipe.description}'),
              const SizedBox(height: 20),
              const Text('Bahan-bahan:', style: TextStyle(fontWeight: FontWeight.bold)),
              ...recipe.ingredients.map((ingredient) => Text('- $ingredient')),
              const SizedBox(height: 20),
              const Text('Instruksi:', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(recipe.instructions),
            ],
          ),
        ),
      ),
    );
  }
}
