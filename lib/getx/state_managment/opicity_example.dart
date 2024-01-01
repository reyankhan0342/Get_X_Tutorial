import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_course/getx/state_managment/get_x_controller.dart';

class OpcityExample extends StatelessWidget {
  OpcityExample({super.key});



  final GetController controller=Get.put(GetController());

  @override
  Widget build(BuildContext context) {
    print('buit');
    return Scaffold(
      appBar: AppBar(
        title: Text('OpcityExample App Use Get x',style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white
        ),),
      ),
      body: Column(
        children: [
         Obx(() {
           return  Container(
             decoration: BoxDecoration(
                 color: Colors.red.withOpacity(controller.opicity.value),
                 borderRadius: BorderRadius.circular(12)
             ),
             width: Get.width,
             height: 300,
           );
         }),
Obx(() =>
    Slider(value: controller.opicity.value, onChanged: (value)
    {
      controller.opicityExample(value);
    }))
        ]
      )
      ,

    );
  }
}
