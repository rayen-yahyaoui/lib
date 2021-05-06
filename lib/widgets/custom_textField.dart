import 'package:UserApp/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint ;
  final IconData icon;
  final Function onClick ;

  String _errorMessage(String str){

    switch(hint){
      case 'Entrer your name' : return 'Name is empty !' ;
      case 'Entrer your Email' : return 'Email is empty !' ;
      case 'Entrer your password' : return 'password is empty !' ;

    }
  }
  
  
  CustomTextField({@required this.onClick,@required this.hint, @required this.icon});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:30),
      child: TextFormField(
        validator: (value){
            if(value.isEmpty)
            {
              return _errorMessage(hint) ;
            }
           
        },
        onSaved: onClick,
        obscureText: hint =='Entrer your password' ?true: false,
        cursorColor: kMainColor1,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(
           icon,
            color: kMainColor1,
          ),
          filled: true,
          fillColor: Colors.amber[600],
          enabledBorder: OutlineInputBorder(
            borderRadius:BorderRadius.circular(20) ,
            borderSide: BorderSide(
              color: Colors.white
          ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20) ,
            borderSide: BorderSide(
              color: Colors.white
          ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20) ,
            borderSide: BorderSide(
              color: Colors.white
          ),
          ),
        ),
      ),
    );
  }
}