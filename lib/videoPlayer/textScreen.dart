import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Text Widget Approach',), backgroundColor: Colors.cyan,centerTitle: true,),
      body: Column(
        children: [
          ShadowText(),
        ],
      )
  )
  )
  );
}

// Basic normal text
class BasicText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Hello, flutter Basic Text');
  }
}

// Practice using different properties of TextStyle
class StylingText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Stylized Text',
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      letterSpacing: 2.0,
      color: Colors.blue,
      wordSpacing: 5.0
    ),);

  }
}

// Experiment with text alignment
class AllignmentText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Centre Allign Text',
    textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20),
    );
  }
}

//Text overflow and maximum lines
class OverflowText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'This is a very long text that might not fit in one line.'
          'This is a very long text that might not fit in one line.'
          'This is a very long text that might not fit in one line.'
          'This is a very long text that might not fit in one line.'
          'This is a very long text that might not fit in one line.',
      overflow: TextOverflow.ellipsis,
      maxLines: 4,
      style: TextStyle(fontSize: 16),
    );

  }
}

//Add shadows to your text by using the shadow property in TextStyle
class ShadowText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Text with Shadow',
      style: TextStyle(
        fontSize: 24,
        shadows: [
          Shadow(
            offset: Offset(2.0, 2.0),
            blurRadius: 3.0,
            color: Colors.grey,
          ),
        ],
      ),
    );

  }
}

//Practice creating text with different styles within the same block of text using the RichText widget and TextSpan.
class RichText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(/*
      text: TextSpan(
        text: 'Flutter ',
        style: TextStyle(color: Colors.black, fontSize: 18),
        children: <TextSpan>[
          TextSpan(
            text: 'is ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: 'awesome!',
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),*/
    );

  }
}
