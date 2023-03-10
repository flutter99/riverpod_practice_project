import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter_app/screens/counter_app_example.dart';
import 'package:riverpod_counter_app/screens/second.dart';

import 'screens/first.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Riverpod example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterAppExample(),
    );
  }
}


