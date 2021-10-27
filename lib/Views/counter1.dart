import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementapp/GetX/Controllers/controller.dart';


class CounterX1 extends StatelessWidget {
  CounterX1({Key key}) : super(key: key);
  final CounterController _counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 6,
      child: SizedBox(
        width: 100,
        height: 100,
        child: GetBuilder<CounterController>(
          init: _counterController,
          builder: (_)=> Center(
            child: Text(_counterController.counter.toString(), style: TextStyle(fontSize: 40)),
          ),
        ),
      ),
    );
  }
}
