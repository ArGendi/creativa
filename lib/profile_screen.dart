import 'package:creativa1/cache.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isLight = Cache.getMode() ?? true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isLight == true? Colors.white : Colors.grey.shade900,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            isLight = !isLight;
            Cache.saveMode(isLight);
            setState(() {});
          },
          icon: Icon(Icons.dark_mode),
        ),
        title: Text("Profile"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
                image: DecorationImage(
                  image: AssetImage(""),
                )
              ),
              child:
            ),
            Text("profile"),
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Go back")),
            IconButton(
              onPressed: (){
                launchUrl(Uri.parse("tel:01286361736"));
              }, 
              icon: Icon(Icons.mail, size: 40, color: Colors.red,),
            )
          ],
        ),
      ),
    );
  }
}