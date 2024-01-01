import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class GetController extends GetxController
{
  RxInt count =0.obs;
  RxDouble opicity=0.1.obs;
  RxBool swichButton=false.obs;
  void increment(){

    count.value++;

     print('value  '+count.toString());
  }

  void decrement()
  {
    count.value--!=-1;
    print('decrement  '+count.toString());
  }

  void clearcount()
  {
    count.value=0;
    print('clear  '+count.toString());
  }

  void opicityExample(value)
  {
    opicity.value=value;

  }

  switchButton(value)
  {
    swichButton.value=value;
  }


  /// favrite list

 RxList<String> FruitList=['apple','orange','mango','banana',].obs;
  RxList<dynamic> TempraryList=[].obs;

   addToList(value)
  {
    TempraryList.add(value);
    print(" tempary list add${TempraryList.length}");
  }


  removeToList(index)
  {
    TempraryList.remove(index);
    print(" tempary list add${TempraryList.length}");
  }

  RxString imagePath=''.obs;
 Future PickImage()async
  {
    ImagePicker imagePicker=ImagePicker();
     final image=await imagePicker.pickImage(source: ImageSource.camera);
     if(image!=null)
       {
         imagePath.value=image.toString();
       }

  }
}