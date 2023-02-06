import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_management_example/screentwo.dart';
import 'package:provider/provider.dart';
import 'package:state_management_example/testing_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<TestingProvider>(
          create: ((context) => TestingProvider()))
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text('Extract Widget'),
        )),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'The Number : ${context.watch<TestingProvider>().count}',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => screentwo()));
                },
                child: Text('screen Two'))
          ],
        )),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: () => context.read<TestingProvider>().increment(),
              child: Icon(Icons.add),
            ),
            SizedBox(
              width: 12.0,
            ),
            FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: () => context.read<TestingProvider>().decrement(),
              child: Icon(CupertinoIcons.minus),
            )
          ],
        ));
  }
}
