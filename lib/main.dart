import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_course/getx/snak_screen.dart';

import 'getx/dark_light_mod.dart';
import 'getx/get _X_routing/getx_routing.dart';
import 'getx/get _X_routing/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:GetXRouting(),
      getPages: [
        GetPage(name: '/GetXRouting', page: ()=>GetXRouting()),
        GetPage(name: '/ScreenTwo', page: ()=>ScreenTwo()),
      ],
    );

  }
}

