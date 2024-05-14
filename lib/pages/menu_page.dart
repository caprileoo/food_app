import 'package:flutter/material.dart';
import 'package:food_app/components/bottom_nav_bar.dart';
import 'package:food_app/components/my_drawer.dart';
import 'package:food_app/components/my_food_tile.dart';
import 'package:food_app/models/food.dart';
import 'package:food_app/models/restaurant.dart';
import 'package:food_app/pages/food_page.dart';
import 'package:provider/provider.dart';


class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> with SingleTickerProviderStateMixin{

  // Tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // Sort out and return a list of food items that belongs to their category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // Return list of foods in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {

      // Get category menu
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          // Get individual food
          final food = categoryMenu[index];

          // Return food tile UI
          return FoodTile(
            food: food, 
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FoodPage(food: food),
                ),
              );
            },
          );
        }
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Theme.of(context).colorScheme.background,
        centerTitle: true,
        actions: [
          // Cart button
          IconButton(onPressed: () {

          }, icon: const Icon(Icons.shopping_cart, size: 35,)
          ),
          IconButton(onPressed: () {

          }, icon: const Icon(Icons.person, size: 35), 
          ),
          const SizedBox(width: 10),
        ],
        
        bottom: TabBar(
          isScrollable: false,
          labelColor: Colors.red.shade400,
          indicatorColor: Colors.red.shade400,
          controller: _tabController,
          tabs: const [
            // Pizza
            Text(
              "Pizza",
              style: TextStyle(fontSize: 20),
              ),
            Text(
              "Sides",
              style: TextStyle(fontSize: 20),
              ),
            Text(
              "Salad",
              style: TextStyle(fontSize: 20),
              ),
            Text(
              "Drinks",
              style: TextStyle(fontSize: 20),
              ),
          ],
        ),
      ),
      
      body: Consumer<Restaurant>(
        builder: (context, restaurant, child) => TabBarView(
          controller: _tabController,
          children: getFoodInThisCategory(restaurant.menu),
        )
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: const BotNavBar(),
    );
  }
}