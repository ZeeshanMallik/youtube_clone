import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/data.dart';

class YoutubeList extends StatelessWidget {
  List dataList = getYouTubeListData();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      //added to stop the scroll of list view
      //physics: NeverScrollableScrollPhysics(),
      itemCount: dataList.length, //// Total number of items in the list
      itemBuilder: (context, index) {
        //should pass the data instead of the index
        return YoutubeListItem(position: index);
      },
    );
  }
}

class YoutubeListItem extends StatelessWidget {
  int position;

  YoutubeListItem({super.key, required this.position});

  List<YoutubeData> dataList = getYouTubeListData();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('${dataList[position].imageUrl}'),
                fit: BoxFit.fill,
              ),
            )),
        Row(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(12, 12, 16, 15),
              child: CircleAvatar(
                backgroundImage: AssetImage('${dataList[position].imageUrl}'),
              ),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${dataList[position].title}",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Text(
                  "${dataList[position].description}",
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ],
            )),
            Container(
              margin: EdgeInsets.fromLTRB(18, 0, 0, 10),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                ),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(bottom: 20))
      ],
    );
  }
}
