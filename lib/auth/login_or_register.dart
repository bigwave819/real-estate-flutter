import 'package:flutter/material.dart';
import '../pages/login_page.dart';
import '../pages/register_page.dart'; // optional if you have a register page

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    } else {
      // if you have a RegisterPage
      return RegisterPage(onTap: togglePages);
      // If you don’t have a separate register page, you can just reuse LoginPage with modified UI
      // return LoginPage(onTap: togglePages);
    }
  }
}
