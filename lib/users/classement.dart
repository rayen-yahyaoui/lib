import 'package:expandable_card/expandable_card.dart';
import 'package:flutter/material.dart';

import '../functions.dart';

class Classement extends StatefulWidget {
  static String id='Classement';

  @override
  _ClassementState createState() => _ClassementState();
}

class _ClassementState extends State<Classement> {
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ExpandableCardPage(
          page: Container(
            child: Center(
             
            ),
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
                    Button("Ligue 1"),
                    SizedBox(
                      width: 10,
                    ),
                    Button("UEFA Champions League"),
                   
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              
              
              
                       Image(
                            fit: BoxFit.fill,
                            image: AssetImage('lib/images/cls.png') ,
                            ),
                        
                                                        
              
              
              ],
          ),
        ),
      ),
    );
  }
}

