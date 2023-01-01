import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserPost extends StatelessWidget {
  final String name;
  final String post;
  UserPost({super.key, required this.name, required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //profile photo
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    //Post PHOTO
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(post), fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    //POST name
                    Text(
                      '@${name}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              //POST ICON
              IconButton(onPressed: () {}, icon: Icon(Icons.settings))
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        //post
        Container(
          height: 450,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(post), fit: BoxFit.cover),
            color: Colors.grey,
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(right: 8, left: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.chat_bubble_outline)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.bookmark))
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Text(
                'Нравится ',
              ),
              Text(
                'gabe ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'и еще',
              ),
              Text(
                '5',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 15, top: 8, bottom: 8),
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: 'ratkum ',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
            TextSpan(
                text: 'Люби и живи ',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
          ])),
        ),
      ],
    );
  }
}
