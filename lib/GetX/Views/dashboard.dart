import 'package:flutter/material.dart';
import 'package:statemanagementapp/GetX/Views/counter1.dart';
import 'package:statemanagementapp/GetX/Views/counter2.dart';
import 'package:statemanagementapp/GetX/Views/counter3.dart';


class DashboardX extends StatelessWidget {
   DashboardX({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: SizedBox(
        width: 400,
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Dashboard", style: TextStyle(fontSize: 60)),
           // const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CounterX1(),
                const SizedBox(width: 20),
                CounterX2(),
                const SizedBox(width: 20),
                CounterX3(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
