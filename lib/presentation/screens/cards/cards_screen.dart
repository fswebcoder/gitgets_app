import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
    static const String name = 'cards_screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text('Tarjetas', style: TextStyle(color: Colors.white)), 
      ),
    );
  }
}