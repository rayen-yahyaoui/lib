 

import 'package:UserApp/constants.dart';
import 'package:UserApp/product.dart';

import 'package:flutter/material.dart';

List<Product> getProductByCategory(String kJackets, List<Product> allproducts) {
                                              List<Product> products = [] ;
                                              try{
                                             for(var product in allproducts)
                                         {
                                          
                                           if(product.pCategory == kPlayer )
                                           {
                                             products.add(product) ;
                                           }
                                         }}on Error catch(ex) 
                                         {
                                           print(ex) ;
                                         }
                                         return products ;
                                          }


Widget Button(var tittle) {
  return RaisedButton(
    shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0)),
    onPressed: () {
      
    },
    child: Text(
      tittle,
      style: TextStyle(
          fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
    ),
    color: Colors.redAccent,
  );
}

Widget News(var link, var tittle) {
  return Card(
    elevation: 2.0,
    child: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 80,
              width: 100,
              child: Image.network(
                link,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          child: Text(
            tittle,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}


