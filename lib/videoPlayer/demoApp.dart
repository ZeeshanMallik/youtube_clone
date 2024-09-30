import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/videoPlayer/textScreen.dart';
import 'package:youtube_clone/videoPlayer/video_demo.dart';

class demoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('UI Components',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20),
        ),centerTitle: true,
            backgroundColor: Colors.cyan),
        body: ListView(
          children: [
            ElevatedButton(onPressed: () {

              // navigate to VideoScreen()
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoScreen(),
                ),);

            }, child: Text("video")),
            Padding(
              padding: const EdgeInsets.all(10),
              child: GestureDetector(
                  onTap: (){
                    //open related page
                    // navigate to VideoScreen()
                    Navigator.push(
                        context, MaterialPageRoute(builder:
                        (context) => BasicText(),
                    ));

                  },
                  child: Card(child: Padding(padding: const EdgeInsets.all(10), child: Text('Text'),))),
            ),

          ],
        )


    );
  }
}
