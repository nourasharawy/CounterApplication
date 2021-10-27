import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CounterController extends GetxController{

  int counter =0 ;
  RxInt counter2 =0.obs ;

  void increament(){
    counter ++;
    update();
  }

  void increament2 (){
    counter2.value ++;
  }


}