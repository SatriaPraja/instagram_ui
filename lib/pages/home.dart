import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/appbar.dart';
import 'package:instagram_ui/widgets/post_item.dart';
import '../widgets/story_item.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: APPBAR(),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.message_sharp),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      StoryItem('Story 1'),
                      StoryItem('Story 2'),
                      StoryItem('Story 3'),
                      StoryItem('Story 4'),
                      StoryItem('Story 6'),
                      StoryItem('Story 7'),
                      StoryItem('Story 8'),
                    ],
                  ),
                ),
              ),
              Divider(),
              PostItem(),
              PostItem(),
              PostItem(),
              PostItem(),
              PostItem(),
            ],
          ),
        ],
      ),
    );
  }
}
