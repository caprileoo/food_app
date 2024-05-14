import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/components/my_button.dart';
import '../models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({
    super.key,
    required this.food,
    }) {
      // Initialize selected addons to be false
      for (Addon addon in food.availableAddons) {
        selectedAddons[addon] = false;
      }
    }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          // Scaffold UI
          Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Item image
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(widget.food.imagePath)),
                  ),
                ),
            
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
            
                      // Item name
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.food.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                            ),
                          ),

                          // Favorite button
                          IconButton(
                          icon: const Icon(
                            Icons.favorite_outline,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        ],
                      ),
            
                      const SizedBox(height: 5),
            
                      // Item description
                      Text(
                        widget.food.description,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                        ),
                      ),
            
                      const SizedBox(height: 10),
            
                      // Item price
                      Text(
                        '${widget.food.price.toString()}.000 VND',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
            
                      const SizedBox(height: 10),
            
                      Divider(color: Theme.of(context).colorScheme.secondary),
            
                      // Item price
                      const Text(
                        'Lựa chọn',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18
                        ),
                      ),
            
                      // Item addons
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: widget.food.availableAddons.length,
                          itemBuilder: (context, index) {
                            // Get individual addon
                            Addon addon = widget.food.availableAddons[index];
                                    
                            // Return check box UI
                            return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text(
                                '+${addon.price}.000đ',
                                style: TextStyle(
                                  color: Colors.red.shade500,
                                  fontWeight: FontWeight.w500
                                  ),
                                ),
                              value: widget.selectedAddons[addon], 
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 20),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Ghi chú',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)
                              ),
                              hintText: "Ghi chú của bạn...",
                              hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
                              filled: true,
                              fillColor: Theme.of(context).colorScheme.secondary
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),

                const SizedBox(height: 10),
            
                // Item total price
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Giá",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      Text(
                          "${widget.food.price.toString()}.000 VND", 
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 5),
            
                // Add to cart button
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Remove button
                      Container(
                        height: 50,
                        width: 50,
                        margin: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.remove,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                      ),

                      Container(
                        height: 50,
                        width: 50,
                        child: const Text(
                          "1",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 34,
                          ),
                        ),
                      ),
                  
                      // Add button
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.add,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      MyButton(
                        text: 'Thêm vào giỏ', 
                        onTap: () {}
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),
              ],
            ),
          ),
        ),

        // Back Button
        SafeArea(
          child: Container(
            height: 60,
            width: 60,
            margin: const EdgeInsets.only(left: 25),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle
            ),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 30,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        )
      ],
    );
  }
}