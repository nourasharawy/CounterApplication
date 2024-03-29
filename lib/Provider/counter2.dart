import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'myProvider.dart';

class Counter2 extends StatelessWidget {
  const Counter2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 6,
      child: SizedBox(
        width: 150,
        height: 150,
        child: Center(
          child: Text(Provider.of<MyProvider>(context).counter.toString(), style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}
