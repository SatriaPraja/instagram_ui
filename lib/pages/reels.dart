import 'package:flutter/material.dart';

void main() {
  runApp(ReelsPage());
}

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(child: Text('REELS')),
    );
  }
}