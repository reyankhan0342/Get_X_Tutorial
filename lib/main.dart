import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_course/getx/state_managment/counter_get_x.dart';
import 'package:get_x_course/getx/state_managment/favrite_list.dart';
import 'package:get_x_course/getx/state_managment/opicity_example.dart';
import 'package:get_x_course/getx/state_managment/pick_image.dart';
import 'package:get_x_course/getx/state_managment/swich_button.dart';
import 'package:get_x_course/getx/utility/snak_screen.dart';

import 'getx/utility/dark_light_mod.dart';
import 'getx/utility/get _X_routing/getx_routing.dart';
import 'getx/utility/get _X_routing/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print('build '+ " =====>>>");
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:pickImage(),
      getPages: [
        GetPage(name: '/GetXRouting', page: ()=>GetXRouting()),
        GetPage(name: '/ScreenTwo', page: ()=>ScreenTwo()),
      ],
    );

  }
}

