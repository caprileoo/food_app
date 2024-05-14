import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/components/my_button.dart';
import 'package:food_app/components/my_textfield.dart';
import 'package:food_app/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController numberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    //Navigate to home page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Logo
          Image.asset('assets/main_logo.png'),
          const SizedBox(height: 20),

          //App slogan
          Text(
            "KIN PIZZA",
            style: TextStyle(
              fontSize: 30,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          const SizedBox(height: 25),          

          //Number texfield
          MyTextField(
            controller: numberController,
            hintText: "Số điện thoại",
            obscureText: false,
          ),

          const SizedBox(height: 10), 

          //Password textfield
          MyTextField(
            controller: passwordController,
            hintText: "Mật khẩu",
            obscureText: true,
          ),

          const SizedBox(height: 25), 

          //Sign in button
          MyButton(
            text: "Đăng nhập", 
            onTap: login,
          ),

          const SizedBox(height: 20), 

          //Login
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Chưa có tài khoản?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Đăng ký",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 45), 
        ],
        ),
      )
    );
  }
}