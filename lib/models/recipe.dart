class Recipe {
  final String title;
  final String description;
  final List<String> ingredients;
  final String instructions;
  final String imageAsset;
  bool isFavorite;

  Recipe({
    required this.title,
    required this.description,
    required this.ingredients,
    required this.instructions,
    required this.imageAsset,
    this.isFavorite = true,
  });
}

List<Recipe> recipes = [
  Recipe(
    title: 'Nasi Goreng',
    description: 'Nasi goreng adalah makanan khas Indonesia.',
    ingredients: ['Nasi', 'Bawang', 'Telur', 'Kecap'],
    instructions: 'Tumis bawang, masukkan nasi, telur, dan kecap. Aduk hingga merata.',
    imageAsset: 'assets/images/nasi-goreng.jpg',
  ),
  Recipe(
    title: 'Sate Ayam',
    description: 'Sate ayam adalah makanan yang terbuat dari daging ayam.',
    ingredients: ['Daging ayam', 'Kecap', 'Bawang merah', 'Tusuk sate'],
    instructions: 'Marinasi daging, tusuk, dan bakar hingga matang.',
    imageAsset: 'assets/images/sate-ayam.png',
  ),
];
