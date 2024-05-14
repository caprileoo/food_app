
import 'package:flutter/material.dart';
import 'package:food_app/pages/home_page.dart';

class BotNavBar extends StatefulWidget {
  const BotNavBar({super.key});

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(0),
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  const HomePage()
                ),
              );
            }, 
            icon: const Icon(
              Icons.home_rounded,
              color: Colors.black,
              size: 45,
            ),
          ),
          IconButton(
            onPressed: () {}, 
            icon: const Icon(
              Icons.percent_rounded,
              color: Colors.black,
              size: 45,
            ),
          ),
          IconButton(
            onPressed: () {}, 
            icon: const Icon(
              Icons.notifications,
              color: Colors.black,
              size: 45,
            ),
          ),
          IconButton(
            onPressed: () {}, 
            icon: const Icon(
              Icons.map_rounded,
              color: Colors.black,
              size: 45,
            ),
          ),
        ],
      ),
    );
  }
}