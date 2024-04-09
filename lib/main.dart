import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Counter App',
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Text(
            '$count',
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black87,
          onPressed: (){
            setState(() {
              count++;
            });
          },
          child: const Icon(CupertinoIcons.add,color: Colors.white),
        ),
      ),
    );
  }
}

int count = 0;