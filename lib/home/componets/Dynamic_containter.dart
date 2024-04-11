import 'package:flutter/material.dart';
import 'Dynamic_list.dart';



void main() {
  runApp(const homePage());
}

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu, color: Colors.white),
          actions: const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                Icons.notification_add,
                color: Colors.white,
              ),
            ),
          ],
          title: const Center(
            child: Text(
              'Dynamic List',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: const Color(0xFF244d61),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(
                l1.length, (index) => container(index: l1[index])),
          ),


        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(
                      () {
                    l1.add(l1.length);
                  },
                );
              },
              backgroundColor: const Color(0xFF1b3a49),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
            const SizedBox(width: 12,),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  l1.removeAt(l1.length - 1);
                });
              },
              backgroundColor: const Color(0xff1b3a49),
              child: const Icon(Icons.remove,color: Colors.white,size: 30,),
            ),
          ],
        ),
      ),
    );
  }
}

List l1 = [];
