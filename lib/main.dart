import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pergunte Qualquer Coisa'),
        backgroundColor: const Color.fromARGB(255, 75, 142, 197),
      ),
      body: const BolaPage(),
    ),
  ));
}

class BolaPage extends StatefulWidget {
  const BolaPage({super.key});

  @override
  State<BolaPage> createState() => _BolaPageState();
}

class _BolaPageState extends State<BolaPage> {
  var centerballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16),
              ),
              onPressed: () {
                rollDie();
              },
              child: Image.asset('Image/ball$centerballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  void rollDie() {
    setState(() {
      var random = Random();
      centerballNumber = random.nextInt(5) + 1;
    });
  }
}