import 'package:flutter/material.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  // List of food menu
  final List<Food> _menu = [
    // Pizzas
    Food(
      name: "4 Cheese Pizza", 
      description: 
          "4 Cheese and cream sauce, served with honey", 
      imagePath: "lib/images/pizzas/4-cheese-pizza.png", 
      price: 179, 
      category: FoodCategory.pizzas, 
      availableAddons: [
        Addon(name: "Medium", price: 0),
        Addon(name: "Large", price: 90),
        Addon(name: "Extra large", price: 186),
      ]
    ),
    Food(
      name: "Chicken BBQ Pizza", 
      description: 
          "Cheese, tomato sauce, chicken, onion, bell pepper, BBQ sauce", 
      imagePath: "lib/images/pizzas/chicken-bbq-pizza.png", 
      price: 169, 
      category: FoodCategory.pizzas, 
      availableAddons: [
        Addon(name: "Medium", price: 0),
        Addon(name: "Large", price: 100),
        Addon(name: "Extra large", price: 210),
      ]
    ),
    Food(
      name: "Veggie Pizza", 
      description: 
          "Cheese, tomato sauce, onion, bell pepper, mushroom, black olive", 
      imagePath: "lib/images/pizzas/veggie-pizza.png", 
      price: 165, 
      category: FoodCategory.pizzas, 
      availableAddons: [
        Addon(name: "Medium", price: 0),
        Addon(name: "Large", price: 94),
        Addon(name: "Extra large", price: 184),
      ]
    ),
    Food(
      name: "Sausage Pizza", 
      description: 
          "Cheese, tomato sauce, sausage", 
      imagePath: "lib/images/pizzas/sausage-pizza.png", 
      price: 169, 
      category: FoodCategory.pizzas, 
      availableAddons: [
        Addon(name: "Medium", price: 0),
        Addon(name: "Large", price: 96),
        Addon(name: "Extra large", price: 190),
      ]
    ),
    Food(
      name: "Hawaiian Pizza", 
      description: 
          "Cheese, tomato sauce, bacon, ham, pineapple", 
      imagePath: "lib/images/pizzas/hawaiian-pizza.png", 
      price: 175, 
      category: FoodCategory.pizzas, 
      availableAddons: [
        Addon(name: "Medium", price: 0),
        Addon(name: "Large", price: 100),
        Addon(name: "Extra large", price: 214),
      ]
    ),
    
    // Fried Foods
    Food(
      name: "Chicken wings (6 PCS)", 
      description: 
          "Chicken wings (6 PCS)", 
      imagePath: "lib/images/fried/6_chicken_wings.png", 
      price: 89, 
      category: FoodCategory.friedFood, 
      availableAddons: [
        Addon(name: "Barbecue Sauce", price: 0),
        Addon(name: "Buffalo", price: 0),
      ]
    ),
    Food(
      name: "Chicken wings (8 PCS)", 
      description: 
          "Chicken wings (8 PCS)", 
      imagePath: "lib/images/fried/8_chicken_wings.png", 
      price: 129, 
      category: FoodCategory.friedFood, 
      availableAddons: [
        Addon(name: "Barbecue Sauce", price: 0),
        Addon(name: "Buffalo", price: 0),
      ]
    ),
    Food(
      name: "French fries", 
      description: 
          "French fries", 
      imagePath: "lib/images/fried/french_fries.png", 
      price: 60, 
      category: FoodCategory.friedFood, 
      availableAddons: [
        Addon(name: "Extra Ketchup", price: 0),
        Addon(name: "Extra Chili", price: 0),
      ]
    ),

    // Salads
    Food(
      name: "Season Salad", 
      description: 
          "Season Salad", 
      imagePath: "lib/images/salads/season-salad.png", 
      price: 69, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Mayonnaise Sauce", price: 0),
        Addon(name: "Sesame Sauce", price: 0),
        Addon(name: "Balsamic Sauce", price: 0),
      ]
    ),
    Food(
      name: "Chicken Salad", 
      description: 
          "Chicken Salad", 
      imagePath: "lib/images/salads/chicken-salad.png", 
      price: 99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Mayonnaise Sauce", price: 0),
        Addon(name: "Sesame Sauce", price: 0),
        Addon(name: "Balsamic Sauce", price: 0),
      ]
    ),

    // Drinks
    Food(
      name: "Lemon Tea C2", 
      description: 
          "Lemon Tea C2", 
      imagePath: "lib/images/drinks/lemon-tea-c2.jpg", 
      price: 25, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Ice", price: 0),
      ]
    ),
    Food(
      name: "Coca Cola", 
      description: 
          "Coca Cola", 
      imagePath: "lib/images/drinks/coke.jpg", 
      price: 20, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Ice", price: 0),
      ]
    ),
    Food(
      name: "Coke Light", 
      description: 
          "Coke Light", 
      imagePath: "lib/images/drinks/coke-light.jpg", 
      price: 25, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Ice", price: 0),
      ]
    ),
    Food(
      name: "Aquafina", 
      description: 
          "Aquafina", 
      imagePath: "lib/images/drinks/aquafina.jpg", 
      price: 20, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Ice", price: 0),
      ]
    ),
  ];

  // Getters
  List<Food> get menu => _menu;

  // Operations


}