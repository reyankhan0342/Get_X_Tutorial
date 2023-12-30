// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';
class SnakScreen extends StatelessWidget {
  const SnakScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
        AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: const Text('Get x Tutorial',style: TextStyle(

            fontSize: 25,

            color: Colors.white
          ),
          ),
        ),
      body: const Column(
        children: [

        ],
      ),

      floatingActionButton:  FloatingActionButton(
        
        backgroundColor: Colors.blue,
        onPressed: (){

          Get.snackbar(
            mainButton: TextButton(onPressed: (){
           print('student');
            }, child: Text('Click',style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),)),
            borderWidth: 2,
            icon: Icon(Icons.email,color: Colors.blue,size: 25,),
            borderColor: Colors.red,
            borderRadius:12,
            snackPosition:SnackPosition.TOP,
            backgroundColor:Colors.orange,
            'Flutter Course', 'Flutter Tutorial',);
        },child: const Icon(Icons.add,color: Colors.black,),),
    );
  }
}
