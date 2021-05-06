import 'package:flutter/material.dart';
  




class Calendar extends StatelessWidget {
  static String id='Calendar';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
    body:ListView.builder(
      itemBuilder: (context,index){
        
        return Card(
          
          
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
                  
                 child:Row(
                   mainAxisSize: MainAxisSize.min,
                 children:<Widget> [
                   Column(children:[
                     Image(
                     image: AssetImage('lib/images/man.png'),width: 100,height: 50,
                   ),
                     Text("MaANCHESTER",style:TextStyle(fontSize: 10),),Text("CITY",style:TextStyle(fontSize: 10),)
                   ]),
                   
                  
                   Column(
                   children:[ 
                     Text("UEFA CHAMPIONS LEAGUE DEMI-FINAL" ,style:TextStyle(fontSize: 10.5,color: Colors.grey)),
                     SizedBox(height:25),
                     Text("Sun,2 May",style: TextStyle(fontWeight: FontWeight.bold),),
                     Container(margin: const EdgeInsets.symmetric(horizontal:50,vertical: 10),
                      color: Colors.black87,width: 80,height: 40,
                      
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                      
                        children: <Widget>[
                          
                      
                       Text("20:00",style: TextStyle(color: Colors.white , fontSize: 30), )
                        ],
                        ), 
                        
                     ),
                   Text("RMC SPORT 1",style: TextStyle(fontWeight: FontWeight.bold)),
                   SizedBox(height:50),
                   Text("AUCUN BILLET DISPONIBLE",style:TextStyle(fontSize: 15,color: Colors.grey))
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
                       
                    
                  );
        
                  }
      ),
        
        
         
    );
  }
}