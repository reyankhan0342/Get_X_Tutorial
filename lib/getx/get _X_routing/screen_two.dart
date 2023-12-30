import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ScreenTwo extends StatelessWidget {
  var name;
   ScreenTwo({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Get X Routing Screen two   ',style: TextStyle(
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
               Get.back();
            }, child: Text('screen two  \t  '+ Get.arguments[1],style: TextStyle(
                fontWeight: FontWeight.w800,color: Colors.black
            ),)),
          )
        ],
      ),
    );
  }
}
