// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
class DarkLightMod extends StatelessWidget {
  const DarkLightMod({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true
        ,
        title: Text('Dark Light Mode',style: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),),
      ),
      body: Column(
        children: [
          Card(


            child: ListTile(

              title: Text('Diloge using get x',style: TextStyle(
                fontSize: 16,
                color: Colors.black,

              ),),
             subtitle: Text('AMF AKF AMNA MNAF',style: TextStyle(
               fontSize: 12,
               color: Colors.black
             ),),
              leading: Icon(Icons.person,color: Colors.black,size: 16,),

              trailing: IconButton(onPressed: ()
                {
                  Get.defaultDialog(

                     title: 'Deleting',
                    titlePadding:EdgeInsets.only(top: 10),
                    titleStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,

                    ),
                    contentPadding: EdgeInsets.all(20),
                    confirm: TextButton(onPressed: (){
                     Get.back();
                    }, child:Text('Ok',style: TextStyle(fontSize: 14,
                    color: Colors.black,fontWeight: FontWeight.w500,
                    ),) ),
                    cancel: TextButton(onPressed: (){
                      Get.back();
                    }, child:Text('Cancel',style: TextStyle(fontSize: 14,
                      color: Colors.black,fontWeight: FontWeight.w500,
                    ),) ),


                      content: Column(
                        children: [
                          Text('defuilt',style: TextStyle(fontSize: 14,
                          color: Colors.black,fontWeight: FontWeight.w300,),),
                          Text('defuilt',style: TextStyle(fontSize: 14,
                            color: Colors.black,fontWeight: FontWeight.w300,),),
                          Text('defuilt',style: TextStyle(fontSize: 14,
                            color: Colors.black,fontWeight: FontWeight.w300,),),

                          Text('defuilt',style: TextStyle(fontSize: 14,
                            color: Colors.black,fontWeight: FontWeight.w300,),),
                          Text('defuilt',style: TextStyle(fontSize: 14,
                            color: Colors.black,fontWeight: FontWeight.w300,),),
                        ],
                      )
                  );

                }, icon: Icon(Icons.delete,color: Colors.red,size: 20,),
            ),
          ),
          ),


           SizedBox(height: 20,),
          Card(
            child: ListTile(

              title: Text('Change Them',style: TextStyle(
                fontSize: 16,
                color: Colors.black,

              ),),
              subtitle: Text('AMF AKF AMNA MNAF',style: TextStyle(
                  fontSize: 12,
                  color: Colors.black
              ),),
              leading: Icon(Icons.person,color: Colors.black,size: 16,),
              trailing: Icon(Icons.delete,color: Colors.red,size: 20,),
              onTap: ()
              {
                Get.bottomSheet(
                  Container(
                 decoration: BoxDecoration(
                   color: Colors.blue,borderRadius: BorderRadius.circular(10),

                 ),

                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        ListTile(

                          leading: Icon(Icons.light_mode,color: Colors.black,size: 30,),
                       title: Text('Light Mode',style: TextStyle(
                         fontWeight: FontWeight.w600,
                         color: Colors.black,
                         fontSize: 18,
                       ),),
                          trailing: IconButton(icon:Icon(Icons.add,size: 17,color: Colors.black,),onPressed: ()
                            {
                              Get.back();
                            },),
                          onTap: ()
                          {
                            Get.changeTheme(ThemeData.light(),);
                          },
                        ),
                        SizedBox(height: 10,),
                        ListTile(

                          leading: Icon(Icons.dark_mode,color: Colors.black,size: 30,),
                          title: Text('Dark Mode',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 18,
                          ),),
                          onTap: ()
                          {
                            Get.changeTheme(ThemeData.dark(),);
                          },
                        )
                      ],
                    ),
                  )
                );
              },
            ),
          )

        ],
      ),
    );
  }
}
