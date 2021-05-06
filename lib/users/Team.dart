import 'package:flutter/material.dart';



class TeamScreen extends StatefulWidget {
  static String id = 'TeamScreen';


  @override
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {


  @override
  Widget build(BuildContext context) {
    return Material(
       child: GridView.builder(
                                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 2 ,
                                                      childAspectRatio: .9
                                                      ) ,
                                                    
                                                   itemBuilder: 
                                                 (context,index) => Padding(
                                                   padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                                                      child: GestureDetector(
                                                        onTap: ()
                                                        {
                                                        
                                                        },
                                                      child: Stack(
                                                      children: <Widget>[
                                                        Positioned.fill(
                                                              child: Image(
                                                                fit: BoxFit.fill,
                                                              image: AssetImage('lib/images/ronaldo.jpg') ,
                                                          ),
                                                        ),
                                                        Positioned(
                                                          bottom: 0,
                                                               child: Opacity(
                                                                 opacity: .6,
                                                                 child: Container(
                                                                 width: MediaQuery.of(context).size.width,
                                                                 color: Colors.white,
                                                                 height: 50,
                                                                 child: Padding(
                                                                   padding: EdgeInsets.symmetric(horizontal:10,vertical:5),
                                                                     child: Column(
                                                                     crossAxisAlignment: CrossAxisAlignment.start,
                                                                     children:<Widget> [
                                                                       Text('Cristiano Ronaldo',
                                                                         style: TextStyle(
                                                                           fontFamily: 'Pacifico',
                                                                           fontSize: 20,
                                                                         fontWeight: FontWeight.bold,
                                                                       ),
                                                                       ),
                                                                      
                                                                     ],
                                                                     ),
                                                                 ),
                                                          ),
                                                               ),
                                                        ),
                                                      ], 
                                                   ),
                                                           ),
                                                 ),
                                                   itemCount: 13,
                                         
                                                 ),
                                                 
    );
  }
}