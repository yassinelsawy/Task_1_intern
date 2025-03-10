import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_1_intern/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        
        
        
        
      
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}

