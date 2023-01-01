import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccTab1 extends StatelessWidget {
  final String profilephoto;
  const AccTab1({super.key, required this.profilephoto});

  @override
  Widget build(BuildContext context) {
    return 
        Container(
          // height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(profilephoto), fit: BoxFit.cover),
            color: Colors.grey,
          ),
        );
     
    // Container(
    //       height: 450,
    //       decoration: BoxDecoration(
    //         image:
    //             DecorationImage(image: NetworkImage(post), fit: BoxFit.cover),
    //         color: Colors.grey,
  }
}
