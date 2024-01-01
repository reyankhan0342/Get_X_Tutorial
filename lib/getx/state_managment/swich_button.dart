// ignore_for_file: prefer_const_constructors, avoid_print, unnecessary_import
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'get_x_controller.dart';
class SwitchButton extends StatelessWidget {
  SwitchButton({super.key, });

  final GetController controller=Get.put(GetController());
  @override
  Widget build(BuildContext context) {
    print('build  ========>>>>>>');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Get X SwitchButton   ',style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w800,
        ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

        Obx(() => Switch(value: controller.swichButton.value, onChanged: (value)
        {
          controller.switchButton(value);

        }))
        ],
      ),
    );
  }
}
