import 'package:UserApp/provider/modelHud.dart';
import 'package:UserApp/screens/login_screen.dart';
import 'package:UserApp/services/auth.dart';
import 'package:UserApp/users/HomePage.dart';
import 'package:UserApp/widgets/custom_textField.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';
import '../constants.dart';

class SignupScreen extends StatelessWidget {
  static String id='SignupScreen' ;
  String _email, _password, _name ;
  final GlobalKey<FormState> _globalkey=GlobalKey<FormState>() ;
  final _auth=Auth();
  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    return  Scaffold(
        backgroundColor: kMainColor1,
        body:ModalProgressHUD(
          inAsyncCall: Provider.of<ModelHud>(context).isLoading,
            child: Form(
            key: _globalkey ,
            child: ListView(
              children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  height: MediaQuery.of(context).size.height*.3,
                    child: Stack(
                    alignment: Alignment.center,
                  children: <Widget>[
                    Image(
                      image:AssetImage('lib/images/mun.png') ,
                      height: height*.15,
                      ),
                      Positioned(
                        bottom: 0,
                      child: Text(
                        'Welcome To Man United App',
                        style: TextStyle(
                          fontFamily:'Pacifico',
                          fontSize: 25,
                          color: Colors.amber
                        ),
                      ),
                      ),
                  ],
            ),
                ),
              ) ,
              SizedBox(
                      height: height*.08 ,
                    ),
                    CustomTextField(
                      onClick: (value){
                        _name=value;
                      },
                      hint: 'Entrer your name',
                      icon: Icons.perm_identity,
                    ),
      
             SizedBox(
                      height: height*.03 ,
                    ),
                    CustomTextField(
                      onClick: (value){
                        _email=value ;

                      },
                      hint: 'Entrer your Email',
                      icon: Icons.email,
                    ),
                    SizedBox(
                      height: height*.03 ,
                    ),
                    CustomTextField(
                      onClick: (value){
                        _password=value;
                      },
                      hint: 'Entrer your password', 
                      icon: Icons.lock
                      ),
                      SizedBox(
                      height: height*.05 ,
                    ),
                     Padding(
                        padding: const EdgeInsets.symmetric(horizontal:120),
                        child: Builder(
                            builder:(context) => FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            onPressed:()async{
                              final modelhud=Provider.of<ModelHud>(context, listen: false);
                              modelhud.changeisLoading(true);
                             if( _globalkey.currentState.validate()){
                                 _globalkey.currentState.save();
                                try{
                                final authResult=await _auth.signUp(_email, _password);
                                modelhud.changeisLoading(false);
                                Navigator.pushNamed(context, HomePage.id);
                                }catch(e){
                                  modelhud.changeisLoading(false);
                                    Scaffold.of(context).showSnackBar(
                                      SnackBar(
                                        content:Text(
                                          e.message
                                          ),
                                      ));
                                }
                               }
                               modelhud.changeisLoading(false);
                              
                                } ,
                                color: Colors.black,
                                 child: Text(
                                       'Sign Up',
                                        style: TextStyle(
                                          color: Colors.white, 
                                          ),
                                           ),
                                                                            
                                          ),
                                          ),
                                          ),
                                            SizedBox(
                                              height: height*.02 ,
                                            ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center ,
                                                children: <Widget> [
                                                  Text('Already have an account?  ' ,
                                                  style: TextStyle(
                                                    color:Colors.white, 
                                                    fontSize: 16,
                                                  
                                                  ),
                                                  ),
                                                  GestureDetector(
                                                    onTap:(){
                                                       Navigator.pushNamed(context, LoginScreen.id);
                                                    },
                                                    child: Text(
                                                    'Sign in',
                                                     style: TextStyle(fontSize: 16,
                                                    ),
                                                    ),
                                                  ),
                                                ],
                              
                                              ),
                                    ],
                                    ),
          ),
        ),
     );
    }
                        
                    
}