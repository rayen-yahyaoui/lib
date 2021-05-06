import 'package:expandable_card/expandable_card.dart';
import 'package:flutter/material.dart';

import '../functions.dart';

class Calendrier extends StatefulWidget {
  

  @override
  _CalendrierState createState() => _CalendrierState();
}

class _CalendrierState extends State<Calendrier> {
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
              SingleChildScrollView(
                 scrollDirection: Axis.vertical,
                    child: Card(
          
                    elevation: 5,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                    
                   child:Row(
                     mainAxisSize: MainAxisSize.min,
                   children:<Widget> [
                     Column(children:[
                       Image(
                       image: AssetImage('lib/images/man.png'),width: 80,height: 50,
                     ),
                       Text("MaANCHESTER",style:TextStyle(fontSize: 10),),Text("CITY",style:TextStyle(fontSize: 10),)
                     ]),
                     
                    
                     Column(
                     children:[ 
                       Text("UEFA CHAMPIONS LEAGUE DEMI-FINAL" ,style:TextStyle(fontSize: 10.5,color: Colors.grey)),
                       SizedBox(height:20),
                       Text("Sun,2 May",style: TextStyle(fontWeight: FontWeight.bold),),
                       Container(margin: const EdgeInsets.symmetric(horizontal:50,vertical: 10),
                        color: Colors.red,width: 80,height: 40,
                        
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                        
                          children: <Widget>[
                            
                        
                         Text("20:00",style: TextStyle(color: Colors.white , fontSize: 30), )
                          ],
                          ), 
                          
                       ),
                     Text("RMC SPORT 1",style: TextStyle(fontWeight: FontWeight.bold)),
                     SizedBox(height:50),
                  
                        TextButton(
                       onPressed: (){},
                       child: Text("AUCUN BILLET DISPONIBLE",style:TextStyle(fontSize: 10,color: Colors.grey)),
                     
                     ),
                     ]),
                     
             Column(
                 
                 children:[
                       Image(
                       image: AssetImage('lib/images/paris.png'),width: 45,height: 50,
                     ),
                       Text("PARIS ",style:TextStyle(fontSize: 10),),Text("SG ",style:TextStyle(fontSize: 10),)
                       
                     ]),
                   ],
                   ),
                         
                      
                    ),
              )


            


            ],
          ),
        ),
      ),
          );

  }
}