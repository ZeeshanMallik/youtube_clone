import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class YoutubeBottomBar extends StatelessWidget {
  const YoutubeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
    //backgroundColor: Colors.black,
    //unselectedItemColor: Colors.white,
    //selectedItemColor: Colors.grey,
    items: <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home, ), label: 'Home', ),
    BottomNavigationBarItem(icon: Icon(Icons.pin), label: 'Shorts'),
    BottomNavigationBarItem(
    icon: Icon(Icons.subscriptions_outlined), label: 'Subscription'),
    ],
    onTap: (int index) {
    print("Tapped item $index");

    },

    );

  }
}
