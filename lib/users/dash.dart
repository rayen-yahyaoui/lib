import 'package:UserApp/users/Team.dart';
import 'package:flutter/material.dart';


import '../constants.dart';


class DashPage extends StatefulWidget {
  static String id = 'DashPage';

  @override
  _DashPageState createState() => _DashPageState();
}
 

class _DashPageState extends State<DashPage> {
 
  
  
  int _tabBarIndex=0;
  int _bottomBarIndex=0 ;
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        DefaultTabController(
          length: 4,
          child: Scaffold(
           
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
                  Text('Calendrier',
                  style: TextStyle(
                    color: _tabBarIndex == 0 ? Colors.black : kUnActiveColor,
                    fontSize: _tabBarIndex == 0 ? 12: null ,
                  ),
                  ),
                  Text('Classement',
                  style: TextStyle(
                    color: _tabBarIndex == 1 ? Colors.black : kUnActiveColor,
                    fontSize: _tabBarIndex == 1 ? 12: null 
                    ),
                    ),
                  Text('Actualités',
                  style: TextStyle(
                    color: _tabBarIndex == 2 ? Colors.black : kUnActiveColor,
                    fontSize: _tabBarIndex == 2 ? 12: null 
                    ),
                  ),
                   Text('Effectif',
                  style: TextStyle(
                    color: _tabBarIndex == 3 ? Colors.black : kUnActiveColor,
                    fontSize: _tabBarIndex == 3 ? 12: null 
                    ),
                  ),
                 
                ],
              ),
            ),
           

            
            body: TabBarView(
              children: <Widget>[
        
        Text('First View'),

        Text('Second View'),
        Text('Third View'),
        Text('Fourd View'),
                 
                     ],
                                                 
                
                       ),
                ),
                 ),
                        Material(
                          
                          color: kMainColor1,
                             child: Padding(
                                padding:EdgeInsets.fromLTRB(20, 30, 20, 0) ,
                                child: Container(
                                  
                                                               
                                height: MediaQuery.of(context).size.height * .08,
                                child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children : <Widget>[
                                           GestureDetector(
                                                                     onTap: (){                                                                     },
                                                                       child: Icon(
                                                                       Icons.view_array,
                                                                       size: 30
                                                                      
                                                 
                                                                     ),
                                                                   ),
                                           
                                            Image(
                                                 image:AssetImage('lib/images/mun.png') ,
                                                 alignment: Alignment.center,
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

}
