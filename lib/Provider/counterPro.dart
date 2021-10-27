import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementapp/Provider/dashboard.dart';

import 'myProvider.dart';

class CounterPro extends StatelessWidget {
  CounterPro({Key key}) : super(key: key);
  int n =0;
  @override
  Widget build(BuildContext context) {
    print("n= ${n++}");
    return Scaffold(
      appBar: AppBar(title: const Text('Demo')),
      body: const Center(
        child: Dashboard(),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Provider.of<MyProvider>(context , listen: false).increment() ;
        },
      ),
    );
  }
}
