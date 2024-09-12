

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

  List<YoutubeData> items=[YoutubeData(title:'Prince', imageUrl: 'assets/images/lake.jpg', description: 'Lake View Switzerland'),
    YoutubeData(title:'Rocky', imageUrl: 'assets/images/pune.jpeg', description: 'Pune'),
    YoutubeData(title:'Charlie', imageUrl: 'assets/images/indore.jpeg', description: 'Indore'),
    YoutubeData(title:'Trump', imageUrl: 'assets/images/redFort.jpeg', description: 'Red Fort'),
    YoutubeData(title:'Harley', imageUrl: 'assets/images/hyderabad.jpeg', description: 'Hyderabad')];

  return items;
}


