import 'package:flutter/material.dart';

void main() {
  runApp(AddPage());
}

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(child: Text('Add')),
    );
  }
}