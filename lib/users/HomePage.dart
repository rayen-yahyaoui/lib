

import 'package:UserApp/screens/login_screen.dart';
import 'package:UserApp/screens/signup_screen.dart';
import 'package:UserApp/users/Team.dart';
import 'package:UserApp/users/calendrier.dart';
import 'package:UserApp/users/dash1.dart';
import 'package:UserApp/widgets/calendar.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:hexcolor/hexcolor.dart';


class HomePage extends StatefulWidget {
  static String id = 'HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}
 

class _HomePageState extends State<HomePage> {
 
  
  
  int _tabBarIndex=0;
  int _bottomBarIndex=0 ;
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        DefaultTabController(
          length: 3,
          child: Scaffold(
           
 bottomNavigationBar: BottomNavigationBar(
             backgroundColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: kUnActiveColor,
              currentIndex: _bottomBarIndex ,
              fixedColor: kMainColor,
              onTap: (value) {

                   if (value == 0) {
                  
                  Navigator.pushNamed(context, Calendar.id);
                }

                if (value == 1) {
                  
                  Navigator.pushNamed(context, Dash1Page.id);
                }

                if (value == 2) {
                  
                  Navigator.pushNamed(context, SignupScreen.id);
                }

                setState(() {
                  _bottomBarIndex = value ;
                });

              },
              items: [
                BottomNavigationBarItem(
                
                  title: Text('United now'),
                  icon: Icon(Icons.public), 
                ),
                 BottomNavigationBarItem(
                  title: Text('My Team'),
                  icon: Icon(Icons.gamepad), 
                ),
                BottomNavigationBarItem(
                  title: Text('Search'),
                  icon: Icon(Icons.search), 
                ),
                BottomNavigationBarItem(
                  title: Text('My account'),
                  icon: Icon(Icons.person), 
                ),
                
      
              ],
            ),

            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              bottom: TabBar(
                indicatorColor: kMainColor,
                onTap: (value){
                 setState(() {
                   _tabBarIndex = value;
                 });

                },
                tabs: <Widget>[
                  Text('News',
                  style: TextStyle(
                    color: _tabBarIndex == 0 ? Colors.black : kUnActiveColor,
                    fontSize: _tabBarIndex == 0 ? 16: null ,
                  ),
                  ),
                  Text('Events',
                  style: TextStyle(
                    color: _tabBarIndex == 1 ? Colors.black : kUnActiveColor,
                    fontSize: _tabBarIndex == 1 ? 16: null 
                    ),
                    ),
                  Text('Calendrier',
                  style: TextStyle(
                    color: _tabBarIndex == 2 ? Colors.black : kUnActiveColor,
                    fontSize: _tabBarIndex == 2 ? 16: null 
                    ),
                  ),
                 
                ],
              ),
            ),
           

            
            body: TabBarView(
              children: <Widget>[
        
        cardViewN(),

        cardViewE(),
        Calendar(),
                 
                     ],
                                                 
                
                       ),
                ),
                 ),
                        Material(
                          
                          color: HexColor('#7e3737'),
                             child: Padding(
                                padding:EdgeInsets.fromLTRB(20, 30, 20, 0) ,
                                child: Container(
                                  
                                                               
                                height: MediaQuery.of(context).size.height * .08,
                                child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children : <Widget>[
                                           GestureDetector(
                                                                     onTap: (){},
                                                                       child: Icon(
                                                                       Icons.view_array,
                                                                       size: 30
                                                                      
                                                 
                                                                     ),
                                                                   ),
                                           
                                            GestureDetector(
                                              onTap: (){
                                                
                                              },
                                                   child: Image(
                                                   image:AssetImage('lib/images/mun.png') ,
                                                   alignment: Alignment.center,
                                               ),
                                            ),
                                                                  GestureDetector(
                                                                     onTap: (){

                                                                        Navigator.pushNamed(context, TeamScreen.id); 
                                                                       
                                                                        },
                                                                       child: Icon(
                                                                       Icons.people_alt,
                                                                       size: 30
                                                                      
                                                 
                                                                     ),
                                                                   ),
                                                                 ],
                                                               ),
                                                               ),
                                                             ),
                                                         ),
                                                         
                                                       ],
                                                       
                                                              
                                                     );
                                                   }

                cardViewN(){
                                   return  GridView.builder(
                                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 1 ,
                                                      childAspectRatio: .8
                                                      ) ,
                                                    
                                                   itemBuilder: 
                                                 (context,index) => Padding(
                                                   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                                      child: GestureDetector(
                                                        onTap: ()
                                                        {
                                                        
                                                        },
                                                      child: Stack(
                                                      children: <Widget>[
                                                        Positioned.fill(
                                                              child: Image(
                                                                fit: BoxFit.fill,
                                                              image: AssetImage('lib/images/nws.jpg') ,
                                                          ),
                                                        ),
                                                        Positioned(
                                                          bottom: 0,
                                                               child: Opacity(
                                                                 opacity: .9,
                                                                 child: Container(
                                                                 width: MediaQuery.of(context).size.width,
                                                                 color: Colors.black,
                                                                 height: 60,
                                                                 child: Padding(
                                                                   padding: EdgeInsets.symmetric(horizontal:10,vertical:5),
                                                                     child: Column(
                                                                     crossAxisAlignment: CrossAxisAlignment.start,
                                                                     children:<Widget> [
                                                                       Text('News',
                                                                    
                                                                       style: TextStyle(
                                                                         fontWeight: FontWeight.bold,
                                                                         color: kMainColor1
                                                                       ),),
                                                                       Text('newww',
                                                                        style: TextStyle(
                                                                         
                                                                         color: kSecondaryColor
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
                                                   itemCount: 4,
                                         
                                                 );
                }

                cardViewP(){
                                   
                }

                 cardViewE(){
                                   return  GridView.builder(
                                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 1 ,
                                                      childAspectRatio: .8
                                                      ) ,
                                                    
                                                   itemBuilder: 
                                                 (context,index) => Padding(
                                                   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                                      child: GestureDetector(
                                                        onTap: ()
                                                        {
                                                        
                                                        },
                                                      child: Stack(
                                                      children: <Widget>[
                                                        Positioned.fill(
                                                              child: Image(
                                                                fit: BoxFit.fill,
                                                              image: AssetImage('lib/images/event.jpg') ,
                                                          ),
                                                        ),
                                                        Positioned(
                                                          bottom: 0,
                                                               child: Opacity(
                                                                 opacity: .9,
                                                                 child: Container(
                                                                 width: MediaQuery.of(context).size.width,
                                                                 color: Colors.black,
                                                                 height: 60,
                                                                 child: Padding(
                                                                   padding: EdgeInsets.symmetric(horizontal:10,vertical:5),
                                                                     child: Column(
                                                                     crossAxisAlignment: CrossAxisAlignment.start,
                                                                     children:<Widget> [
                                                                       Text('Event',
                                                                       style: TextStyle(
                                                                         fontWeight: FontWeight.bold,
                                                                         fontSize: 22,
                                                                         color: kMainColor1
                                                                       ),),
                                                                       
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
                                                   itemCount: 4,
                                         
                                                 );
                }

                                         
                                                 
                              
}
