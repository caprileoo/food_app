import 'package:flutter/material.dart';
import 'package:food_app/components/my_divider_tile.dart';
import 'package:food_app/pages/home_page.dart';
import 'package:food_app/pages/login_page.dart';
import 'package:food_app/pages/menu_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //App logo
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Image.asset('assets/main_logo.png', scale: 1.5),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),

          //Home list tile
          MyDrawerTile(
            icon: Icons.home_outlined, 
            text: "Trang chủ", 
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()
                ),
              );
            },
          ),
          
          //Settings list tile
          MyDrawerTile(
            icon: Icons.dashboard_outlined, 
            text: "Menu", 
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MenuPage()
                ),
              );
            },
          ),

          //Settings list tile
          MyDrawerTile(
            icon: Icons.map_rounded, 
            text: "Theo dõi đơn hàng", 
            onTap: () {},
          ),

          MyDrawerTile(
            icon: Icons.check_box_outlined, 
            text: "Lịch sử thanh toán", 
            onTap: () {},
          ),

          MyDrawerTile(
            icon: Icons.notifications_none, 
            text: "Thông báo", 
            onTap: () {},
          ),

          MyDrawerTile(
            icon: Icons.person, 
            text: "Chuyển sang Admin", 
            onTap: () {},
          ),

          MyDrawerTile(
            icon: Icons.person_2_outlined, 
            text: "Chuyển sang Staff", 
            onTap: () {},
          ),

          const Spacer(),

          // Website
          const SizedBox(
            height: 20,
            child: Padding(
              padding: EdgeInsets.only(left: 80.0),
              child: Row(
                children: [
                  Icon(Icons.language_outlined),
                  SizedBox(width: 5),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'kinpizza',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          )
                        ),
                        TextSpan(
                          text: '.com',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 10),
          Divider(color: Theme.of(context).colorScheme.primary,),

          //Log out list tile
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: MyDrawerTile(
              icon: Icons.logout, 
              text: "Đăng xuất", 
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(onTap: () {},)
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 25,)
        ],
      )
    );
  }
}