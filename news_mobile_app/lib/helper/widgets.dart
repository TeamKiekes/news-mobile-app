import 'package:flutter/material.dart';

class ArticleTile extends StatelessWidget {
  final String imageUrl, title, summary, link, newsRating;
  ArticleTile(
      {@required this.imageUrl,
      @required this.title,
      @required this.summary,
      @required this.link,
      @required this.newsRating});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(imageUrl)),
            SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 8,
            ),
            Text('Trustworthiness: $newsRating',
                style: TextStyle(color: Colors.black54)),
            Text(
              summary,
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ));
  }
}
