import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/nav.dart';
import './pages/profile.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BotNav(),
    );
  }
}
