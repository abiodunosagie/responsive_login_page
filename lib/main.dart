import 'package:flutter/material.dart';
import 'package:responsive_login_page/view/loginscreen.dart';

void main() {
  runApp(const ResponsiveLogin());
}

class ResponsiveLogin extends StatelessWidget {
  const ResponsiveLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Layout',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
