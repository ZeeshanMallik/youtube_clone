import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AppBar(
          backgroundColor: Colors.black,
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
                  style: TextStyle(fontSize: 20, color: Colors.white))
            ],
          ),

          actions: [
            Icon(
              Icons.cast,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
            )
          ],

          //Text('YouTube', style: TextStyle(fontSize: 12,color: Colors.white),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.grey,
          items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home, ), label: 'Home', ),
          BottomNavigationBarItem(icon: Icon(Icons.pin), label: 'Shorts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined), label: 'Subscription'),
        ],
          onTap: (int index) {
            print("Tapped item $index");

          },
        ),
      ),
    );
  }
}
