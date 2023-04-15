import 'package:flutter/material.dart';
import 'package:reto_tres/pages/homepage.dart';

void main() {
  runApp(const Retotres());
}

class Retotres extends StatelessWidget {
  const Retotres({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


