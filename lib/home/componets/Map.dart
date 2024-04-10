import 'package:flutter/material.dart';

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
              color: Colors.white,
            ),
            Padding(padding:EdgeInsets.symmetric(horizontal: 8)),
          ],
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            'Map',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        backgroundColor: const Color(0xFFeeeeee),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Container(
                height: 90,
                color: Colors.white,
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Exit',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w400),
                      ),
                      Icon(Icons.exit_to_app,size: 27,),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                height: 90,
                color: Colors.white,
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Play',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 24),
                      ),
                      Icon(Icons.play_arrow,size: 27,),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                height: 90,
                color: Colors.white,
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pause  ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 24),
                      ),
                      Icon(Icons.pause,size: 27,),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                height: 90,
                color: Colors.white,
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Stop',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 24),
                      ),
                      Icon(Icons.stop,size: 27,),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                height: 90,
                color: Colors.white,
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Close',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 24),
                      ),
                      Icon(Icons.close_rounded,size: 27,),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                height: 90,
                color: Colors.white,
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delete',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 24),
                      ),
                      Icon(Icons.delete,size: 27,),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                height: 90,
                color: Colors.white,
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Email',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 24),
                      ),
                      Icon(Icons.email,size: 27,),
                    ],
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
