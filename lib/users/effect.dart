import 'package:expandable_card/expandable_card.dart';
import 'package:flutter/material.dart';

import '../api.dart';
import '../functions.dart';

class Effec extends StatefulWidget {
  Effec({Key key}) : super(key: key);

  final UsersApi api = UsersApi();

  @override
  _EffecState createState() => _EffecState();
}

class _EffecState extends State<Effec> {

  List contacts = [];


  @override
  void initState(){
    super.initState();
    widget.api.getUsers().then((data){
       setState(() {
         contacts = data;
         
       }); 
    });
  }

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
            minHeight: 215,
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
            
            Column(
        children: [...contacts.map<Widget>((contact) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListTile(
            title: Text(contact['name'],
        
            style: TextStyle(
              fontSize:20,
            ),
            ),
            subtitle:Text(contact['username'],
        
            style: TextStyle(
              fontSize:20,
            ),
            ),
            leading: Text(contact['email'],
        
            style: TextStyle(
              fontSize:20,
            ),
            ),

          ),
        ),
        ).toList(),
        ],
      ),

            ],
          ),
        ),
      ),
          );
  }
}