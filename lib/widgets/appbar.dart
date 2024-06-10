import 'package:flutter/material.dart';

class APPBAR extends StatelessWidget {
  const APPBAR({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'images/logo.png',
            height: 50,
          ),
        ),
        PopupMenuButton(
          icon: Icon(Icons.keyboard_arrow_down_outlined),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Row(
                children: [
                  Text('Mengikuti'),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(Icons.group_rounded),
                ],
              ),
              value: 1,
            ),
            PopupMenuItem(
              child: Row(
                children: [
                  Text('Favorit'),
                  SizedBox(
                    width: 60,
                  ),
                  Icon(Icons.star_border),
                ],
              ),
              value: 2,
            ),
          ],
        ),
      ],
    );
  }
}
