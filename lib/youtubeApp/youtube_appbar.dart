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
              width: 30,
              child: Image.asset(
                'assets/images/youtubeLogo1.jpeg', height: 50, width: 30,
              )),
          SizedBox(
            width: 3,
          ),
          Text('YouTube',
            style: TextStyle(
              //fontFamily: 'TradeGothicLTStd',
                fontSize: 22,
              fontWeight: FontWeight.w700,
              letterSpacing: -1,
            ),
            //color: Colors.black),)
          )],
      ),

      actions: [
        Icon(
          Icons.cast,
          color: Colors.black,
          size: 28,
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.notifications,
           color: Colors.black,
          size: 28,
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.search,
           color: Colors.black,
          size: 28,
        ),

      ],

      //Text('YouTube', style: TextStyle(fontSize: 12,color: Colors.white),
      
    );

  }
}

