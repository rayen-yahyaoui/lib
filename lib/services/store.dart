
import 'package:cloud_firestore/cloud_firestore.dart';

import '../constants.dart';
import '../product.dart';


class Store   {
  
  final Firestore _firestore = Firestore.instance;

  addProduct(Product product)
  {
    _firestore.collection(kMunCollection).add(
      {
        kMunName: product.pName ,
        
        kMunLocation:product.pLocation,

        kMunCategory:product.pCategory,
        

    }
    );
  }
  Stream <QuerySnapshot> loadProducts()
  {
   return _firestore.collection(kMunCollection).snapshots();
   
   }
   
   
 

}