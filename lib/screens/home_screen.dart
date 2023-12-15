import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRAFT BURGUER COMPANY'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: const Center(
        child: Text('FROM BURGUERS TO FUCKING BERGUERS'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ignore: avoid_print
          print('asd');
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
