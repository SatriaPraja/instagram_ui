import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.red, Colors.amber]),
              borderRadius: BorderRadius.circular(60)),
        ),
        Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://picsum.photos/200/300'),
              ),
              borderRadius: BorderRadius.circular(60)),
        ),
      ],
    );
  }
}
