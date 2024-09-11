import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';






class ImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              child: Image.asset(
                'assets/images/lake.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(12, 12, 16, 15),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/lake.jpg'),
                  ),
                ),

                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lake View, Switzerland',
                          textAlign: TextAlign.left,
                          style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                        ),

                        Text('Name',
                          style: TextStyle(fontSize: 11,
                              color: Colors.grey),),
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
            )
          ],
        ),
      ),
    );
  }
}
