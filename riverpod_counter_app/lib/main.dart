import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameProvider = Provider<String>(
  (ref) {
    return "Bilal Ahmad";
  },
);

final secondNameProvider = Provider<String>(
  (ref) {
    return "2nd Read Example";
  },
);

final thirdNameProvider = Provider<String>(
      (ref) {
    return "3rd Read Example";
  },
);

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final name = ref.read(thirdNameProvider);
    print(name.toString());
  }

  @override
  Widget build(BuildContext context) {
    final name = ref.watch(thirdNameProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod example'),
      ),
      body: Center(
        child: Text(name),
        ),
    );
  }
}
