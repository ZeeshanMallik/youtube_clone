import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YoutubeAppbar extends StatelessWidget {
  const YoutubeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //backgroundColor: Colors.black,
      title: Row(
        children: [
          SizedBox(
              width: 40,
              child: Image.asset(
                'assets/images/youtubeLogo1.jpeg',
              )),
          SizedBox(
            width: 10,
          ),
          Text('YouTube',
            style: TextStyle(fontSize: 20),
            // color: Colors.white))
          )],
      ),

      actions: [
        Icon(
          Icons.cast,
          //color: Colors.white,
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.notifications,
          // color: Colors.white,
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.search,
          // color: Colors.white,
        )
      ],

      //Text('YouTube', style: TextStyle(fontSize: 12,color: Colors.white),
    );
  }
}