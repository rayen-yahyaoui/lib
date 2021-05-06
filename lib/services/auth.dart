import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Auth{
 final _auth=FirebaseAuth.instance;

  Future<AuthResult> signUp(String email, String password)async{
   final authResult= await _auth.createUserWithEmailAndPassword(email: email, password: password);
    return authResult;
  }

  Future<AuthResult> signIn(String email, String password)async{
   final authResult= await _auth.signInWithEmailAndPassword(email: email, password: password);
    return authResult;
  }  
}
class AuthS{
    Dio dio = new Dio();

    login(email,password) async{
      try{
        return await dio.post('http://localhost:8282', data:{
            "email": email,
            "password" : password, 
        }, options: Options(contentType: Headers.formUrlEncodedContentType )
        );
      }
      on DioError catch(e) {
        Fluttertoast.showToast(msg: e.response.data['msg'],
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
        );
      }
    }


}