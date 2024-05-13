// ignore_for_file: prefer_const_constructors

import 'package:creativa1/home_screen.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TextField(
              //   maxLines: 5,
              //   decoration: InputDecoration(
              //     hintText: "Write some notes",
              //     enabledBorder: InputBorder.none,
              //     focusedBorder: InputBorder.none,
              //   ),
              // ),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  //hintText: "Email",
                  labelText: "Email",
                  enabledBorder: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(20),
                    //borderSide: BorderSide(color: Colors.green)
                  ),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: passController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  enabledBorder: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(20),
                    //borderSide: BorderSide(color: Colors.green)
                  ),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),
              isLoading == false ?
              ElevatedButton(
                onPressed: () async{
                  try{
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passController.text);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  }
                  catch(error){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Wrong email or password"))
                    );
                  }

                  // try{
                  //   isLoading = true;
                  //   setState(() {});
                  //   Dio d = Dio();
                  //   var response = await d.post(
                  //     "https://project2.amit-learning.com/api/auth/login",
                  //     data: {"email": emailController.text, "password": passController.text} 
                  //   );
                  //   if(response.statusCode! >= 200 && response.statusCode! < 300){
                  //     Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  //   }
                  //   else{
                  //     ScaffoldMessenger.of(context).showSnackBar(
                  //       SnackBar(content: Text("Wrong email or password"))
                  //     );
                  //   }
                  //   isLoading = false;
                  //   setState(() { });
                  // }
                  // catch(error){
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //       SnackBar(content: Text("Try again later"))
                  //     );
                  // }
                },
                child: Text("Login"),
              ) : CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}