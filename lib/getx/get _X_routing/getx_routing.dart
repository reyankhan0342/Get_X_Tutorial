import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_course/getx/get%20_X_routing/screen_two.dart';

class GetXRouting extends StatelessWidget {
  const GetXRouting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Get X Routing Screen one',style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w800,
        ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(onPressed: (){
               //Get.to(ScreenTwo(name: 'luqman ali',));
              Get.toNamed('/ScreenTwo',arguments: [
                'luqman ali khan',
                'flutter developer',
              ]);
            }, child: Text('screen one ',style: TextStyle(
              fontWeight: FontWeight.w800,color: Colors.black
            ),)),
          )
        ],
      ),
    );
  }
}
