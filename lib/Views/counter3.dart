import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagementapp/GetX/Controllers/controller.dart';


class CounterX3 extends StatelessWidget {
  CounterX3({Key key}) : super(key: key);
  final CounterController _counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 6,
      child: SizedBox(
        width: 100,
        height: 100,
        child:Obx(()=>
            Center(
              child: Text(_counterController.counter2.value.toString(), style: TextStyle(fontSize: 40)),
            ),
        ),
      ),
    );
  }
}
