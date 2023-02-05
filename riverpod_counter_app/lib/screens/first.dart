import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter_app/providers/string_provider.dart';

class FirstWay extends ConsumerWidget {
  const FirstWay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Riverpod Provider'),
      ),

      body: Center(
        child: Text(name),
      ),
    );
  }
}

class SecondWay extends StatelessWidget {
  const SecondWay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riverpod Provider'),
      ),
      body: Center(
        child: Consumer(builder: (context, ref, child) {
          final name = ref.watch(secondNameProvider);
          return Text(name);
        }),
      ),
    );
  }
}

class ThirdWay extends ConsumerStatefulWidget {
  const ThirdWay({Key? key}) : super(key: key);

  @override
  _ThirdWayState createState() => _ThirdWayState();
}

class _ThirdWayState extends ConsumerState<ThirdWay> {


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
        title: Text('Riverpod Provider'),
      ),
      body: Center(
        child: Text(name),
      ),
    );
  }
}

