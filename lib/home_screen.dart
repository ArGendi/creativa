import 'package:creativa1/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push( context, MaterialPageRoute(builder: (context) => ProfileScreen()) );
          }, icon: Icon(Icons.person))
        ],
      ),
        body: ListView(
          children: [
            Container( width: 200, height: 200,color: Colors.green,),
            Container( width: 200,height: 200, color: Colors.black,),
            Container( width: 200,height: 200, color: Colors.yellow,),
            Container( width: 200,height: 200, color: Colors.blue,),
          ],
        ),
      );
  }
}