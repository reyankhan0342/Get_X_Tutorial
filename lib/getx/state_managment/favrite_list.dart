// ignore_for_file: prefer_const_constructors, unnecessary_import, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

import 'get_x_controller.dart';

 List FruitList=['apple','orange','mango','banana',];

class FavriteList extends StatelessWidget {
  FavriteList({super.key, });
  final GetController controller=Get.put(GetController());
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('Get X Favourite List   ',style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w800,
        ),),
      ),
      body: Column(
       children: [


          Expanded(
            child:ListView.builder(
              itemCount: FruitList.length,
                itemBuilder: (context,index){
            
              return ListTile(

                  onTap: ()
                  {


                    if(controller.TempraryList.contains(controller.FruitList[index].toString())){
                      controller.removeToList(controller.FruitList[index].toString());
                    }
                    else
                    {
                      controller.addToList(controller.FruitList[index]);
                    }

                },
                 title: Text(FruitList[index],style:TextStyle(
                   fontWeight:FontWeight.w600,
                   fontSize:15,
                   color:Colors.black,
                 ),),
                subtitle:const Text('fruits',style:TextStyle(fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black,

                  ),
                ),
                trailing: Obx((){
                  return controller.TempraryList.contains(controller.FruitList[index].toString())
                      ?Icon(Icons.favorite,color: Colors.red,):Icon(Icons.favorite,color: Colors.black,) ;
                })
              );
            }),
          )
        ]
      ),
    );
  }
}
