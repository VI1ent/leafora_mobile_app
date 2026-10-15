import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final List<String> bestSell = [
  'assets/background1.svg'
      'assets/plant1.svg'
      'assets/background2.svg'
      'assets/background3.svg',
];

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 1;
  void _currentIndex0() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(title: Text('Меню')),
            body: Text('Основное меню'),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 41, 61, 50),
        title: Text(
          'Leafora',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        elevation: 0,

        leading: IconButton(
          iconSize: 24,
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            setState(() {
              _currentIndex0;
            });
          },
        ),

        actions: [
          IconButton(
            iconSize: 24,
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {
              setState(() {
                _currentIndex = 1;
              });
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsGeometry.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Найти что нибудь",
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 12),
                  IconButton(
                    icon: Icon(Icons.filter, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            Column(children: [SizedBox(height: 180)]),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 75, 96, 87),
        elevation: 0,
        child: SizedBox(
          height: 25,
          width: 35,
          child: Row(
            mainAxisAlignment: .spaceAround,

          ),
        ),
      ),
    );
  }
}
