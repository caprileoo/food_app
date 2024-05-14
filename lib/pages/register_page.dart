import 'package:flutter/material.dart';
import 'package:food_app/components/my_button.dart';
import 'package:food_app/components/my_textfield.dart';
import 'package:food_app/pages/home_page.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
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
            "Đăng ký ngay",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          const SizedBox(height: 25),       

          //Name texfield
          MyTextField(
            controller: emailController,
            hintText: "Họ và tên",
            obscureText: false,
          ),

          const SizedBox(height: 15),

          //Number texfield
          MyTextField(
            controller: emailController,
            hintText: "Số điện thoại",
            obscureText: false,
          ),

          const SizedBox(height: 15), 
 

          //Email texfield
          MyTextField(
            controller: emailController,
            hintText: "Email",
            obscureText: false,
          ),

          const SizedBox(height: 15), 

          //Password textfield
          MyTextField(
            controller: passwordController,
            hintText: "Mật khẩu",
            obscureText: true,
          ),

          const SizedBox(height: 15), 

          //Password confirm textfield
          MyTextField(
            controller: passwordController,
            hintText: "Xác nhận mật khẩu",
            obscureText: true,
          ),

          const SizedBox(height: 25), 

          //Sign up button
          MyButton(
            text: "Đăng ký", 
            onTap: () {},
          ),

          const SizedBox(height: 25), 

          //Register
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Đã có tài khoản?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Đăng nhập",
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