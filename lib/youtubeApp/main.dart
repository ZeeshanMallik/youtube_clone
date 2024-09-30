import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/youtubeApp/bottombar.dart';
import 'package:youtube_clone/videoPlayer/demoApp.dart';
import 'package:youtube_clone/youtubeApp/drawerSuggestions.dart';
import 'package:youtube_clone/youtubeApp/youtube_Short.dart';
import 'package:youtube_clone/youtubeApp/youtube_appbar.dart';
import 'package:youtube_clone/youtubeApp/youtube_list.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:HomeScreen(),
  )

    //  HomeScreen()
  );

}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(automaticallyImplyLeading: false, title: YoutubeAppbar(),
        leading: null),
       drawer: Drawer(child: YoutubeDrawer()),
      //main body
        body: ListView(
          children: [
            FilterChips(),
            //height should not be hardcoded,try other options too
            Padding(padding: EdgeInsets.only(bottom: 30)),
            ShortsSection(),
            Expanded(child: YoutubeList()),
          ]
        ),


        //bottom bar
        bottomNavigationBar: YoutubeBottomBar(),

      ),
    );
  }
}




