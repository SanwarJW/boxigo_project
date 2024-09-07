// main.dart
import 'package:boxigo_project/repository/customer_estimates_repo.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                final data = await NetworkService().fetchWeltData();
                print('Data: $data');
              },
              child: const Text('Fetch Data'),
            ),
          ],
        ),
      ),
    );
  }
}
