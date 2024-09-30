import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/youtubeApp/youtube_list.dart';
import 'package:youtube_clone/youtubeApp/data.dart';



main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: new AppBar(title: new Text('Youtube suggestion'),backgroundColor: Colors.cyan,),
          body:  YouTubeSuggestion(),
        ),
      )
     );
}


class YouTubeSuggestion extends StatelessWidget {
  const YouTubeSuggestion({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.draw_outlined)),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: null,
              child: Text('khan'),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: null,
              child: Text('All'),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: null,
              child: Text('Music'),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: null,
              child: Text('News'),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: null,
              child: Text('Cricket'),
            ),
          ),

          /*TextButton(style:ButtonStyle(backgroundColor: Colors.green),onPressed: (){}, child: Text('All', style: TextStyle(fontWeight: FontWeight.bold),)),
          TextButton(onPressed: (){}, child: Text('Music', style: TextStyle(fontWeight: FontWeight.bold),)),
          TextButton(onPressed: (){}, child: Text('Cricket', style: TextStyle(fontWeight: FontWeight.bold),)),
          TextButton(onPressed: (){}, child: Text('News', style: TextStyle(fontWeight: FontWeight.bold),))*/
         ]
      ),
    );
  }
}





