import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/add.dart';
import 'package:instagram_ui/pages/home.dart';
import 'package:instagram_ui/pages/profile.dart';
import 'package:instagram_ui/pages/reels.dart';
import 'package:instagram_ui/pages/search.dart';

void main() {
  runApp(BotNav());
}

class BotNav extends StatefulWidget {
  const BotNav({super.key});

  @override
  State<BotNav> createState() => _BotNavState();
}

class _BotNavState extends State<BotNav> {
  late int index;
  final tabs = [
    HomePage(),
    SearchPage(),
    AddPage(),
    ReelsPage(),
    ProfilePage(),
  ];
  @override
  void initState() {
    index = 1;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: tabs[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: 'movie'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
        ],
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}
