import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BubleStories extends StatelessWidget {
  final String text;
  final String photoimage;
  BubleStories({super.key, required this.text, required this.photoimage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[400],
                image: DecorationImage(image: NetworkImage(photoimage))),
          ),
          SizedBox(
            height: 10,
          ),
          Text(text)
        ],
      ),
    );
  }
}
