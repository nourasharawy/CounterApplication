import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'myProvider.dart';

class Counter1 extends StatelessWidget {
  const Counter1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 6,
      child: SizedBox(
        width: 100,
        height: 100,
        child: Center(
          child: Text(Provider.of<MyProvider>(context).counter.toString(), style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}
