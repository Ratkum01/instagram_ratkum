import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 6,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        //

        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
              child: Container(
              color: Colors.grey,
            ),
          );
        }
       
        );
  }
}
