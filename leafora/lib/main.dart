import 'package:flutter/material.dart';

import 'screens/welcome_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop App',

      theme: ThemeData(
        primaryColor:  const Color.fromARGB(255, 255, 255, 255),
        scaffoldBackgroundColor: const Color.fromARGB( 255, 41, 61, 50),
      ),
  
      initialRoute: '/',   //какой экран запустить при старте
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
