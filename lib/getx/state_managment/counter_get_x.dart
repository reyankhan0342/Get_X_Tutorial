import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_course/getx/state_managment/get_x_controller.dart';

class CounterGetX extends StatelessWidget {
   CounterGetX({super.key});



     final GetController controller=Get.put(GetController());

  @override
  Widget build(BuildContext context) {
     print('buit');
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App Use Get x',style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.white
        ),),
      ),
      body: Column(
        children: [


          Obx(() {
            return  Text('counter ' + controller.count.string,style: TextStyle(
    fontWeight: FontWeight.w800,
    color: Colors.red,
    fontSize: 15,

    ),);
          }),

          Row(
            children: [
              TextButton(onPressed: (){
controller.clearcount();
              }, child: Text(" Clear ",style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w800
              ),)),
              SizedBox(
                width: Get.width*0.1,
              ),
              TextButton(onPressed: (){
controller.decrement();
              }, child: Text(" Decrement ",style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w800
              ),)),
            ],
          ),
        ],
      )
      ,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,size: 30,color: Colors.black,),
        onPressed: ()
        {
          controller.increment();

        },),
    );
  }
}
