import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/youtube_list.dart';

import 'data.dart';


main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: YoutubeList(),
      )
    )
  );
}


