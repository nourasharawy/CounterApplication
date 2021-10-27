import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagementapp/GetX/Controllers/controller.dart';


class CounterX2 extends StatelessWidget {
  CounterX2({Key key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 6,
      child: SizedBox(
        width: 100,
        height: 100,
        child: GetX<CounterController>(
          builder:(_counterController)=> Center(
            child: Text(_counterController.counter2.value.toString(), style: TextStyle(fontSize: 40)),
          ),
        ),
      ),
    );
  }
}
