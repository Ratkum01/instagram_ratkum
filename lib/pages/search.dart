import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../util/explore_grid.dart';

class SearchPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.grey[300],
              child: Row(
                children: [Icon(Icons.search), Text('Search')],
              )),
        ),
      ),
      body: ExploreGrid()
            );
     
  }
}
