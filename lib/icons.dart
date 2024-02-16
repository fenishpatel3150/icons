import 'package:flutter/material.dart';

class IconScreen extends StatefulWidget {
  const IconScreen({super.key});

  @override
  State<IconScreen> createState() => _IconScreenState();
}

class _IconScreenState extends State<IconScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title:  Text('IconsScreen', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 30),),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      custom(const Icon(Icons.add,size: 40, color: Colors.black ),),
                      custom(const Icon(Icons.album_rounded,size: 40,color: Colors.black),),
                      custom(const Icon(Icons.arrow_back_ios_new,size: 40, color: Colors.black,),),
                      custom(const Icon(Icons.arrow_forward_ios,size: 40,color: Colors.black),),
                      custom(const Icon(Icons.alarm,size: 40,color: Colors.black),),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      custom(const Icon(Icons.verified_user_rounded,size: 40, color: Colors.black,),),
                      custom(const Icon(Icons.account_circle_outlined,size: 40, color: Colors.black),),
                      custom(const Icon(Icons.cached_outlined,size: 40, color: Colors.black),),
                      custom(const Icon(Icons.ac_unit,size: 40, color: Colors.black),),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      custom(const Icon(Icons.back_hand,size: 40, color: Colors.black),),
                      custom(const Icon(Icons.cable,size: 40, color: Colors.black),),
                      custom(const Icon(Icons.accessibility_sharp,size: 40, color: Colors.black),),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      custom(const Icon(Icons.phone_rounded,size: 40, color: Colors.black),),
                      custom(const Icon(Icons.search,size: 40, color: Colors.black),),
                      custom(const Icon(Icons.add_a_photo_outlined,size: 40, color: Colors.black),),
                      custom(const Icon(Icons.square,size: 40, color: Colors.black),),
                      custom(const Icon(Icons.play_arrow,size: 40, color: Colors.black),),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      custom(const Icon(Icons.apps,size: 40, color: Colors.black),),
                      custom(const Icon(Icons.workspaces_outlined,size: 40, color: Colors.black),),
                      custom(const Icon(Icons.wifi_lock,size: 40, color: Colors.black),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget custom(Icon i1) {
  return Container(
    margin:  EdgeInsets.all(7),
    height: 150,
    width: 150,
    decoration: BoxDecoration(
      color:  Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: const [
        BoxShadow(
          color: Colors.blue,
          blurRadius: 2,
          spreadRadius: 0,
          offset: Offset(0, 6),
        ),
      ],
    ),
    child: i1,
  );
}