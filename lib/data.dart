

import 'package:flutter/cupertino.dart';

class YoutubeData{
  String title;
  String imageUrl;

   String description;

  YoutubeData({
    required this.title,
    required this.imageUrl,
    required this.description
});

}

List<YoutubeData> getYouTubeListData(){

  List<YoutubeData> items=[
    YoutubeData(title:'Prince', imageUrl: 'assets/images/lake.jpg', description: 'Lake View Switzerland'),
    YoutubeData(title:'Rocky', imageUrl: 'assets/images/pune.jpeg', description: 'Pune'),
    YoutubeData(title:'Charlie', imageUrl: 'assets/images/indore.jpeg', description: 'Indore'),
    YoutubeData(title:'Trump', imageUrl: 'assets/images/redFort.jpeg', description: 'Red Fort'),
    YoutubeData(title:'Harley', imageUrl: 'assets/images/hyderabad.jpeg', description: 'Hyderabad'),

    //duplicate
    YoutubeData(title:'Prince 2', imageUrl: 'assets/images/lake.jpg', description: 'Lake View Switzerland'),
    YoutubeData(title:'Rocky 2', imageUrl: 'assets/images/pune.jpeg', description: 'Pune'),
    YoutubeData(title:'Charlie 2', imageUrl: 'assets/images/indore.jpeg', description: 'Indore'),
    YoutubeData(title:'Trump 2', imageUrl: 'assets/images/redFort.jpeg', description: 'Red Fort'),
    YoutubeData(title:'Harley 2', imageUrl: 'assets/images/hyderabad.jpeg', description: 'Hyderabad')

  ];

  return items;
}

class YoutubeShortData{
  String imageUrl;

  String headline;

  YoutubeShortData({
    required this.imageUrl,
    required this.headline
  });

}
List<YoutubeShortData> getYouTubeShortListData(){

  List<YoutubeShortData> shortsItem=[
    YoutubeShortData(imageUrl: 'assets/images/lake.jpg', headline: 'Lake View Switzerland'),
    YoutubeShortData(imageUrl: 'assets/images/pune.jpeg', headline: 'Pune'),
    YoutubeShortData(imageUrl: 'assets/images/indore.jpeg', headline: 'Indore'),
    YoutubeShortData(imageUrl: 'assets/images/redFort.jpeg', headline: 'Red Fort'),


];
return shortsItem;
}


