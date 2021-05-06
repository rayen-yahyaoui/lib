import 'package:UserApp/constants.dart';
import 'package:UserApp/users/actualit%C3%A9s.dart';
import 'package:UserApp/users/calendrier.dart';
import 'package:UserApp/users/classement.dart';
import 'package:UserApp/users/effect.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class Dash1Page extends StatefulWidget {

  static String id = 'Dash1Page';


  @override
  _Dash1PageState createState() => _Dash1PageState();
}

class _Dash1PageState extends State<Dash1Page> {

  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kMainColor1,
        body:Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: _getPage(currentPage),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
         inactiveIconColor: Colors.grey,
         activeIconColor: Colors.redAccent,
         circleColor: Colors.white,
         textColor: Colors.redAccent,
        tabs: [
          TabData(
            iconData: Icons.calendar_today,
            title: "Calendrier",
          ),
          TabData(
            iconData: Icons.whatshot,
            title: "Classement",
          ),
          TabData(iconData: Icons.new_releases, title: "Actualités"),
          TabData(iconData: Icons.person, title: "Effectif")
        ],
        initialSelection: 0,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[Text("Hello"), Text("Nikhil")],
        ),
      ),
    ),
    );
    
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return Calendrier();
      case 1:
        return Classement();
        case 2:
        return Actus();
      case 3:
        return Effec();
      default:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("This is the basket page"),
          ],
        );
    }
  }
}