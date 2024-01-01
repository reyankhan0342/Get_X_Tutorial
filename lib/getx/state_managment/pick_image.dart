// ignore_for_file: prefer_const_constructors, unnecessary_import, avoid_print

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

import 'get_x_controller.dart';

class pickImage extends StatelessWidget {
  pickImage({super.key, });
  final GetController controller=Get.put(GetController());
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('Get X Pick Image From Gallary',style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w800,
        ),),
      ),
      body: Column(
          children: [


             CircleAvatar(
               backgroundImage:
               controller.imagePath.isNotEmpty?FileImage(File(controller.imagePath.toString())):null
             ),


              TextButton(onPressed: (){
                controller.PickImage();
              }, child:Text('Pick Images ') ),
          ]
      ),
    );
  }
}
