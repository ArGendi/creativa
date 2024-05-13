import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<Map> products = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
                FirebaseFirestore.instance.collection("products").add({
                  "name": "Shoes",
                  "price": 100,
                  "rate": 5,
                });
              },
              child: Text("Add"),
            ),
            SizedBox(height: 20,),
            TextButton(
              onPressed: (){
                FirebaseFirestore.instance.collection("products").doc("yOIeEOykyLHzK7WDz6wE").delete();
              },
              child: Text("delete"),
            ),
            SizedBox(height: 20,),
            TextButton(
              onPressed: (){
                FirebaseFirestore.instance.collection("products").doc("yOIeEOykyLHzK7WDz6wE").update({
                  "price": 1000
                });
              },
              child: Text("update"),
            ),
            SizedBox(height: 20,),
            TextButton(
              onPressed: () async{
                var response = await FirebaseFirestore.instance.collection("products").get();
                for(var doc in response.docs){
                  products.add( doc.data() );
                }
              },
              child: Text("Get"),
            ),
          ],
        ),
      ),
    );
  }
}