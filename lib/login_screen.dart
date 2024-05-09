// ignore_for_file: prefer_const_constructors

import 'package:creativa1/home_screen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

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
              ElevatedButton(
                onPressed: (){
                  if(emailController.text.contains("@") && passController.text.length >= 6){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()) );
                  }
                  else{
                    emailController.clear();
                    passController.clear();
                    ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text("Eh al araf da"), backgroundColor: Colors.red,) );
                  }
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}