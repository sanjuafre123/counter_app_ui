
import 'package:flutter/material.dart';
import 'home/componets/Row1_Row2.dart';
import 'home/componets/Row3_Row4.dart';
import 'home/componets/Row5_Row6.dart';

void main() {
  runApp(const mapList());
}

class mapList extends StatelessWidget {
  const mapList({super.key});

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
  State<homePage> createState() => homePageState();
}

class homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            actions: const [
              Icon(
                Icons.notification_add,
                color: Colors.black,
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
            ],
            leading: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            backgroundColor: const Color(0xFFfefefe),
            centerTitle: true,
            title: const Text(
              'Icons',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          backgroundColor: const Color(0xFFeeeeee),
          body: const SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row1(),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row2(),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row3(),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row4(),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row5(),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row6(),
                ),

              ],
            ),
          )),
    );
  }
}
