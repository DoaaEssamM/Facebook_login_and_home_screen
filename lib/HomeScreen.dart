import 'package:flutter/material.dart';
import 'package:login/Status.dart';
import 'package:login/Post.dart';

class HomeScreen extends StatelessWidget{
  static const routeName = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255,255,255, 1),
      appBar: AppBar(
        title: Text('Home'),
),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Status(),
                  Status(),
                  Status(),
                  Status(),
                  Status(),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.separated(separatorBuilder:  (BuildContext context, int index) => Divider( height: 3, color: Colors.pink),
                itemBuilder: (buildContext,index){
                return Post();
              },
              itemCount: 20,
              ),
            )
          ]
        ),
      ),
    );
  }

}