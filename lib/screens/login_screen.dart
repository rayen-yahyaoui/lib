import 'package:UserApp/constants.dart';
import 'package:UserApp/provider/modelHud.dart';
import 'package:UserApp/services/auth.dart';
import 'package:UserApp/users/HomePage.dart';
import 'package:UserApp/widgets/custom_textField.dart';
import 'package:flutter/material.dart';
import 'package:UserApp/screens/signup_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';


class LoginScreen extends StatelessWidget {
  
   static String id='LoginScreen';
   String _email, _password, token ;
   final GlobalKey<FormState> _globalkey=GlobalKey<FormState>() ;
   final _auth=Auth();
  
  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kMainColor1,
      body:ModalProgressHUD(
         inAsyncCall: Provider.of<ModelHud>(context).isLoading,
          child: Form(
          key: _globalkey,
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
                    height: height*.1 ,
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
                          onPressed:(){
                            AuthS().login(_email, _password).then((value){
                                  if (value.data['success']){
                                    token = value.data['token'] ;
                                    Fluttertoast.showToast(
                                       msg: 'Authenticated',
                                       toastLength: Toast.LENGTH_SHORT,
                                       gravity: ToastGravity.BOTTOM,
                                       timeInSecForIosWeb: 1,
                                       backgroundColor: Colors.green,
                                       textColor: Colors.white,
                                       fontSize: 16.0,
                                      
                                      );
                                  }
                            });
                                                    } ,
                                                        color: Colors.black,
                                                        child: Text(
                                                              'Login',
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
                                                                          Text('Don''t have an account ? ' ,
                                                                          style: TextStyle(
                                                                            color:Colors.white, 
                                                                            fontSize: 16,
                                                                          
                                                                          ),
                                                                          ),
                                                                          GestureDetector(
                                                                            onTap:(){
                                                                               Navigator.pushNamed(context, SignupScreen.id);
                                                                            },
                                                                            child: Text(
                                                                            'Signup',
                                                                             style: TextStyle(fontSize: 16,
                                                                            ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                      
                                                                      ),
                                                                      SizedBox(
                                                                        height: height*.05
                                                                        ),
                                                                       Row(
                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                        children: <Widget> [
                                                                          TextButton(
                                                                            child:Text(
                                                                              'Forgot Password ? ',
                                                                      
                                                                              ),
                                                                              onPressed: (){},
                                                                              ),
                                                            
                                                                          
                                                                        ],
                                                      
                                                                      ),
                                                            ],
                                                            ),
                                                           ),
                                                       ),
                                                      );
                                                    }
                          
                         /*   void validate(BuildContext context)async {
                              final modelhud=Provider.of<ModelHud>(context, listen: false);
                              modelhud.changeisLoading(true);
                            if(_globalkey.currentState.validate()){
                                _globalkey.currentState.save();
                          
                            try{
                              final authResult=await _auth.signIn
                                                    (_email, _password);
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
                          } */
                        
                        
}