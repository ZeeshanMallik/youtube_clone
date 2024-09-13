import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data.dart';

class YoutubeShortList extends StatelessWidget {
  List dataList = getYouTubeListData();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 4.0),// Total number of items in the list
      itemBuilder: (context, index) {
        //should pass the data instead of the index
        return YouTubeShortItem(position: index);
      },
    );
  }
}

class YouTubeShortItem extends StatelessWidget {

  int position;
   YouTubeShortItem({super.key, required this.position});

  List<YoutubeShortData> dataList = getYouTubeShortListData();

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.bottomLeft,
        children: [

          Image.asset(
            '${dataList[position].imageUrl}',
              fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
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
            child: Text('${dataList[position].headline}', style: TextStyle(color: Colors.white),),

          )
        ]
    );
  }
}
