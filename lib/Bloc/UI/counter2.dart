import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagementapp/Bloc/counter_bloc.dart';


class CounterBloc2 extends StatelessWidget {
  CounterBloc2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 6,
      child: SizedBox(
        width: 100,
        height: 100,
          child: BlocBuilder<CounterBloc , int>(
            builder: (context , count)=>Center(
              child: Text(count.toString(), style: TextStyle(fontSize: 40),),
            ),
          )
      ),
    );
  }
}
