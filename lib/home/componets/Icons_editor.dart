import 'package:flutter/material.dart';

import 'Icons_method.dart';

void main() {
  runApp(const Homepage());
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homescreen(),
    );
  }
}

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal.shade50,
        appBar: AppBar(
          leading: const Icon(
            Icons.person,
            size: 30,
          ),
          actions: const [
            Icon(
              Icons.dehaze,
              size: 28,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
            ),
          ],
          centerTitle: true,
          title: const Text(
            'Icons Editor',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 250,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 75,
                    color: selectColor,
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    'Select Color',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(15),
                height: 120,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: List.generate(
                        colorList.length,
                            (index) => GestureDetector(
                            onTap: () {
                              setState(
                                    () {
                                  selectColor = colorList[index];
                                },
                              );
                            },
                            child: colorBox(c1: colorList[index])),
                      ),
                    ),
                  ),
                ),
              ),
              ofText(t1: 'Select Icon'),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(15),
                height: 120,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: List.generate(
                        iconList.length,
                            (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectIcons = iconList[index];
                            });
                          },
                          child: iconBox(icon: iconList[index]),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
