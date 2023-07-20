import 'package:flutter/material.dart';

class Status extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 100,
      height: 140,
      child: Stack(
        children:[
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset('assets/images/facebookStory.jpg',)
            ,
          ),
          CircleAvatar(
            child: Icon(Icons.account_circle),
          ),
          Positioned(
            bottom: 0,
            left: 30,
            child: Text('Owner',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),),
          )
        ],
      ),
    );

  }
}