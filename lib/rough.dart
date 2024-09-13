import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/youtube_list.dart';

import 'data.dart';


main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body:  YouTubeShortItem(),
        ),
      )
     );
}


class YouTubeShortItem extends StatelessWidget {
  const YouTubeShortItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Image.asset(
            'assets/images/lake.jpg',
          ),
          Positioned(
          top: 20,
          right: 10,
          child:IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert, color: Colors.white,
            ),
          )),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("This is my favourite lake", style: TextStyle(color: Colors.white),),

          )
        ]
    );
  }
}





