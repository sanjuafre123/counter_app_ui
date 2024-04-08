import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(CounterApp());
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


class homePageState extends State<homePage>{

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:const Text(
            'Counter App',
            style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.amberAccent,
        body: Center(
          child: Text(
            '$count',
            style:const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Colors.black
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
          child:const Icon(CupertinoIcons.add,color: Colors.white,),
        ),
      ),

    );
  }
}

int count = 0;
