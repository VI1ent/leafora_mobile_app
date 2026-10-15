import 'package:flutter/material.dart';
import 'dart:ui';

//import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/WSK.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),

          SafeArea(
            child: Center(
                       //child SizedBox(
                       //width: ,)
              /*child: Container(
                width: MediaQuery.of(context).size.width*0.85,
                height: MediaQuery.of(context).size.width*0.65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
              ) */

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Leafora',
                    style: TextStyle(fontSize: 38, color: Colors.white),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    "Принесите природу в дом",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    "Красивые растения\nУютные пространства\nГармония в вас",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 15,),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/home');
                        },
                         style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 189, 212, 170),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          "Начать",
                          style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
