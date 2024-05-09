// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool isLight = true;
//   Color x = Colors.yellow;
//   File? image;
//   List<String> names = ["Mohamed", "Ahmed", "Mai", "Hassan", "Omar", "Ali"];
//   List<Color> myColors = [Colors.red, Colors.yellow, Colors.black, Colors.green, Colors.blue, Colors.grey, Colors.purple];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: isLight == true ? Colors.white : Colors.grey.shade900,
//         appBar: AppBar(
//           backgroundColor: isLight == true ? Colors.red : Colors.black,
//           foregroundColor: Colors.white,
//           title: Center(child: Text("Facebook")),
//           actions: [
//             IconButton(
//               onPressed: (){
//                 isLight = !isLight;
//                 setState(() {
                  
//                 });
//               }, 
//               icon: Icon(Icons.dark_mode),
//             ),
//             IconButton(
//               onPressed: ()async{
//                 ImagePicker picker = ImagePicker();
//                 XFile? x = await picker.pickImage(source: ImageSource.camera);
//                 if(x != null){
//                   image = File(x.path);
//                   setState(() {});
//                 }
//               }, 
//               icon: Icon(Icons.camera_alt),
//             ),
//           ],
//         ),
//         body: ListView.separated(
//           separatorBuilder: (context, index){
//             return SizedBox(height: 10,);
//           },
//           itemCount: names.length,
//           itemBuilder: (context, index){
//             return Container(
//               width: 200,
//               height: 100,
//               color: myColors[index],
//               child: Center(child: Text(names[index], style: TextStyle( fontSize: 30),)),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// void main(){
//   runApp(MyApp());
// }









import 'package:creativa1/cache.dart';
import 'package:creativa1/home_screen.dart';
import 'package:creativa1/login_screen.dart';
import 'package:creativa1/profile_screen.dart';
import 'package:flutter/material.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Cache.init();
  runApp(Abdo());
}

class Abdo extends StatefulWidget {
  const Abdo({super.key});

  @override
  State<Abdo> createState() => _AbdoState();
}

class _AbdoState extends State<Abdo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}
