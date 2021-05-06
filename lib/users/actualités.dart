import 'package:expandable_card/expandable_card.dart';
import 'package:flutter/material.dart';

import '../functions.dart';

class Actus extends StatefulWidget {


  @override
  _ActusState createState() => _ActusState();
}

class _ActusState extends State<Actus> {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ExpandableCardPage(
          page: Container(
            
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: new AssetImage(
                        "lib/images/COV.jpg"),
                    fit: BoxFit.cover)),
          ),
          expandableCard: ExpandableCard(
            padding: EdgeInsets.only(top: 0, left: 20, right: 20),
            minHeight: 225,
            maxHeight: 700,
            backgroundColor: Colors.red[50],
            hasRoundedCorners: true,
            hasHandle: false,
            hasShadow: true,
            children: <Widget>[
              Center(
                child: Text(
                  "______",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Button("Home"),
                    SizedBox(
                      width: 10,
                    ),
                    Button("News"),
                   
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),

      

              News(
                  "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fdam%2Fimageserve%2F8a01620b19974f2d85cbf4d6c8acc64c%2F960x0.jpg%3Ffit%3Dscale",
                  "Frank transfer news\nlive: Ndombele deal \nclose to completion"),
              News("https://i.ytimg.com/vi/poWCB9DCP3g/maxresdefault.jpg",
                  "There are no More\nlive: Ndombele deal \nclose to completion"),
              News(
                  "https://www.telegraph.co.uk/content/dam/football/2017/06/15/TELEMMGLPICT000130231477_trans_NvBQzQNjv4BqDQVK81QMLSkr-IuGRMUJHMBlQYzciaw9G4kdmm88BzI.jpeg?imwidth=450",
                  "Spurs transfer news\nlive: Ndombele deal \nclose to completion"),
              News("https://i.ytimg.com/vi/poWCB9DCP3g/maxresdefault.jpg",
                  "There are no More\nlive: Ndombele deal \nclose to completion"),
             News("https://i.ytimg.com/vi/poWCB9DCP3g/maxresdefault.jpg",
                  "There are no More\nlive: Ndombele deal \nclose to completion"),
             
              
              News(
                  "https://d2x51gyc4ptf2q.cloudfront.net/content/uploads/2019/07/02110159/James-Milner-Aaron-Ramsey-Football365-469x245.jpg",
                  "Spurs transfer news\nlive: Ndombele deal \nclose to completion"),
              News(
                  "https://cdn1.tvnz.co.nz/content/dam/images/news/2019/06/25/190330PhoenixvJetsRV_47.jpg.hashed.d2128786.desktop.story.card.jpg",
                  "Spurs transfer news\nlive: Ndombele deal \nclose to completion"),
            ],
          ),
        ),
      ),
    );
  }
}