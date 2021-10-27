import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagementapp/Provider/counterPro.dart';

import '../counter_bloc.dart';
import 'dashboard.dart';

class CounterBlocPro extends StatelessWidget {
  CounterBlocPro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo')),
      body:  Center(
        child: DashboardBloc(),
      ),
      floatingActionButton: FloatingActionButton(
        child:const Icon(Icons.add),
        onPressed: () {
          context.read<CounterBloc>().increment();
        },
      ),
    );
  }
}
