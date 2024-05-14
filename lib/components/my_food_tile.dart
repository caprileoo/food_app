import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  
  const FoodTile({
    super.key,
    required this.food,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column( 
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                // Food image
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(food.imagePath, height: 150, width: 150,)),
                const SizedBox(width: 15),
                // Text food details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        food.name,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                      Text(
                        // ignore: prefer_interpolation_to_compose_strings
                        food.price.toString() + '.000đ', 
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        food.description,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: onTap,
                            child: Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(left: 120),
                            decoration: 
                              BoxDecoration(
                                color: Colors.red.shade400,
                                borderRadius: BorderRadius.circular(8)
                                ),
                                child: const Center(
                                  child: Text(
                                    'Order',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold, 
                                      fontSize: 12,
                                      color: Colors.white,
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
      
          //Divider line
          Divider(
            color: Theme.of(context).colorScheme.secondary,
            endIndent: 25,
            indent: 25,
            ),
        ],
      ),
    );
  }
}