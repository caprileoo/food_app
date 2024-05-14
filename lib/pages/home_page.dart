import 'package:flutter/material.dart';
import 'package:food_app/components/bottom_nav_bar.dart';
import 'package:food_app/components/my_drawer.dart';
import 'package:food_app/pages/menu_page.dart';
import 'package:food_app/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()
                ),
              );
          }, icon: const Icon(Icons.person, size: 35), 
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Divider(
                color: Theme.of(context).colorScheme.primary,
              ),
              
              Container(
                height: 220, //
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/ad_1.png')),
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.only(top: 20), //
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Sản phẩm nổi bật",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                      ),
                      ),
                    TextButton( //
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MenuPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Xem thêm", 
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                      ),
                    ),
                  ],
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    // 1st Recommended Pizza
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(18)
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(18),
                                child: Image.asset(
                                  'lib/images/pizzas/4-cheese-pizza.png',
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                const Text(
                                  "4 Cheese Pizza",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    ),
                                ),
                                Text(
                                  "4 Cheese and cre...",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Theme.of(context).colorScheme.inversePrimary,
                                  ),
                                ),
                
                                const SizedBox(height: 10),
                                
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.all(5),
                                    margin: const EdgeInsets.symmetric(horizontal: 10),
                                    decoration: 
                                      BoxDecoration(
                                        color: Colors.red.shade400,
                                        borderRadius: BorderRadius.circular(18)
                                        ),
                                    child: Center(
                                      child: Text(
                                        'Mua ngay',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold, 
                                          fontSize: 10,
                                          color: Theme.of(context).colorScheme.background,
                                          ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
        
                    const SizedBox(width: 10),
                    // 2nd Recommended Pizza
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(18)
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(18),
                                child: Image.asset(
                                  'lib/images/pizzas/chicken-bbq-pizza.png',
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                const Text(
                                  "Chicken BBQ Pizza",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    ),
                                ),
                                Text(
                                  "Cheese, tomato s...",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Theme.of(context).colorScheme.inversePrimary,
                                  ),
                                ),
                
                                const SizedBox(height: 10),
                                
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.all(5),
                                    margin: const EdgeInsets.symmetric(horizontal: 10),
                                    decoration: 
                                      BoxDecoration(
                                        color: Colors.red.shade400,
                                        borderRadius: BorderRadius.circular(18)
                                        ),
                                    child: Center(
                                      child: Text(
                                        'Mua ngay',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold, 
                                          fontSize: 10,
                                          color: Theme.of(context).colorScheme.background,
                                          ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 33),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade300,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 22.0),
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {}, 
                              icon: const Icon(
                                Icons.local_pizza,
                                size: 60,
                              ),
                            ),
                            const Text('Pizza'),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 40),

                    Container(
                      height: 120,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.red.shade300,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 22.0),
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {}, 
                              icon: const Icon(
                                Icons.local_dining_rounded,
                                size: 60,
                              ),
                            ),
                            const Text('Fried food'),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 40),

                    Container(
                      height: 120,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.green.shade300,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 22.0),
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {}, 
                              icon: const Icon(
                                Icons.emoji_food_beverage_rounded,
                                size: 60,
                              ),
                            ),
                            const Text('Drinks'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Container(
                width: 400,
                height: 400,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  color: Colors.amber.shade300,
                  borderRadius: BorderRadius.circular(18)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  child: Row(
                    children: [
                      // 1st Recommended Pizza
                      Container(
                        height: 260,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.amber.shade100,
                          borderRadius: BorderRadius.circular(18)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.asset(
                                    'lib/images/pizzas/4-cheese-pizza.png',
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  const Text(
                                    "4 Cheese Pizza",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                                    child: Text(
                                      "4 Cheese and cream sauce, served with honey",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Theme.of(context).colorScheme.inversePrimary,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                        
                      const SizedBox(width: 10),
                      // 2nd Recommended Pizza
                      Container(
                        height: 260,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.amber.shade100,
                          borderRadius: BorderRadius.circular(18)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.asset(
                                    'lib/images/pizzas/chicken-bbq-pizza.png',
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  const Text(
                                    "Chicken BBQ Pizza",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                                    child: Text(
                                      "Cheese, tomato sauce, chicken, onion, bell pepper, BBQ sauce",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Theme.of(context).colorScheme.inversePrimary,
                                      ),
                                    ),
                                  ),          
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      drawer: const MyDrawer(),
      bottomNavigationBar: const BotNavBar(),
    );
  }
}