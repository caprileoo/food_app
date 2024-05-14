import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle subTittleStyle = TextStyle(fontSize: 20);
    const double iconSize = 35.0; // Define your icon size here

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Theme.of(context).colorScheme.background,
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {}, 
            child: const Text(
              'Chỉnh sửa',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
              ),
            ),
          const SizedBox(width: 10),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade300,
              ),
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            title: Text(
              'Nguyễn Văn A', 
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              ),
          ),
          const SizedBox(height: 15),
          ListTile(
            title: Text('abc@xyz.com', style: subTittleStyle),
            leading: Icon(Icons.email_outlined, size: iconSize),
          ),
          const SizedBox(height: 15),
          ListTile(
            title: Text('Quận 1, TP.HCM',
                style: subTittleStyle),
            leading: Icon(Icons.home, size: iconSize),
          ),
          const SizedBox(height: 15),
          ListTile(
            title: Text('0903346306', style: subTittleStyle),
            leading: Icon(Icons.phone, size: iconSize),
          ),
          const SizedBox(height: 15),
          ListTile(
            title: Text('22/09/2002', style: subTittleStyle),
            leading: Icon(Icons.cake, size: iconSize),
          ),
        ],
      ),
    );
  }
}
