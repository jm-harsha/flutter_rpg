import 'package:flutter/material.dart';
import 'package:flutter_rpg/screens/create/create.dart';
import 'package:flutter_rpg/screens/home/home.dart';
import 'package:flutter_rpg/theme.dart';

void main() {
  runApp( MaterialApp(
    home:const Home(),
    theme: primaytheme,
  ));

}
class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('appbar'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: const Text('sandbox'),
    );
  }
}