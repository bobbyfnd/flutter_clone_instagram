
import 'package:flutter/material.dart';



import 'package:flutter/services.dart';
import 'package:instagram/home.dart';








void main (){
  runApp(MyWidget());

  // Mengatur warna latar belakang status bar
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // Latar belakang status bar transparan
    statusBarIconBrightness: Brightness.dark, // Ikona status bar (gelap)
  ));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      home: Home(),
      routes: {
        
      },
    );
  }
}