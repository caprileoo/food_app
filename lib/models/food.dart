class Food {
  final String name;
  final String description;
  final String imagePath;
  final int price;
  final FoodCategory category;
  List<Addon> availableAddons = [];

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    this.availableAddons = const [],
  });
}

// Food categories
enum FoodCategory {
  pizzas,
  friedFood,
  salads,
  drinks,
}

// Food addons
class Addon {
  String name = '';
  int? price;

  Addon({
    this.name = '',
    this.price,
  });
}