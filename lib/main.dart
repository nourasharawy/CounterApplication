import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:statemanagementapp/Bloc/UI/counterBlocPro.dart';
import 'package:statemanagementapp/Bloc/counter_bloc.dart';
import 'package:statemanagementapp/Provider/counterPro.dart';

import 'GetX/Controllers/controller.dart';
import 'GetX/Views/counterXPro.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CounterController());
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      /// 1- provider statemanagment way
//      home: ChangeNotifierProvider<MyProvider>(
//       create: (_)=>MyProvider(),
//          child: CounterPro()),

      // 2- GETX statemanagment way
     // home: CounterXPro(),

      //3- Bloc StateManagement
      home: BlocProvider(
        create: (_)=>CounterBloc(),
        child: CounterBlocPro(),
      ),
    );
  }
}
