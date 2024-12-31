import 'package:flutter/material.dart';
import 'login_page.dart'; // Update with your file name

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(), // Set this page as the first screen
    );
  }
}
