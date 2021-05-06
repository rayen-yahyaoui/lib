import 'package:UserApp/provider/modelHud.dart';
import 'package:UserApp/screens/login_screen.dart';
import 'package:UserApp/screens/signup_screen.dart';
import 'package:UserApp/users/HomePage.dart';
import 'package:UserApp/users/Team.dart';
import 'package:UserApp/users/dash.dart';
import 'package:UserApp/users/dash1.dart';
import 'package:UserApp/widgets/calendar.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider<ModelHud>(
      create: (context)=> ModelHud(),
      child: MaterialApp(
      initialRoute: LoginScreen.id,
      routes:
      {
        LoginScreen.id:(context)=>LoginScreen(),
        SignupScreen.id:(context)=>SignupScreen(),
        HomePage.id:(context)=>HomePage(),
        DashPage.id:(context)=>DashPage(),
        Dash1Page.id:(context)=>Dash1Page(),
        TeamScreen.id:(context)=>TeamScreen(),
        Calendar.id:(context)=>Calendar(),
        


      }
    ),
    );
  }
}