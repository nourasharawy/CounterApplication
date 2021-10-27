import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementapp/GetX/Controllers/controller.dart';
import 'package:statemanagementapp/Provider/myProvider.dart';

import 'dashboard.dart';

class CounterXPro extends StatelessWidget {
  CounterXPro({Key key}) : super(key: key);

  final CounterController _counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo')),
      body:  Center(
        child: DashboardX(),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _counterController.increament(); // for first way in GetX
          _counterController.increament2(); // for second way in GetX
        },
      ),
    );
  }
}
