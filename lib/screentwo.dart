import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_example/testing_provider.dart';

class screentwo extends StatelessWidget {
  const screentwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('screen Two'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back')),
          Text(
            'numberka waa:${context.watch<TestingProvider>().count}',
            style: TextStyle(fontSize: 24),
          )
        ],
      )),
    );
  }
}
