import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          ///Owner
          Row(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 23,
                  child: Icon(Icons.person,),
                ),
              ),
              Column(
                children: [
                  Text('Owner', style: TextStyle(fontSize: 20),),
                  Row(
                    children: [
                      Text('3h '),
                      Icon(Icons.public, size: 15,)
                    ],),
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),

          ///Post
          Container(
              child:
              Text('My post', style: TextStyle(fontSize: 30),)),
          SizedBox(
            height: 40,
          ),

          ///100
          Row(
            children: [
              Text('100'),
              Image.asset('assets/images/like.jpg', width: 50,),
              Spacer(),
              Text('100 comments'),
            ],
          ),
          SizedBox(
            height: 10,
          ),

          ///like
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up_alt_outlined),),
                  Text('Like'),
                ],
              ),
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.mode_comment_outlined),),
                  Text('Comment'),
                ],
              ),
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.share),),
                  Text('Share'),
                ],
              ),
            ],
          )

        ],
      );
    }

  }
