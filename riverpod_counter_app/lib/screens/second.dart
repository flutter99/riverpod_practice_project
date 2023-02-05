import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter_app/providers/state_provider.dart';

// class CounterStateExample extends ConsumerWidget {
//   const CounterStateExample({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//
//     /// when need to show just value of provider then we use the ref.watch
//     final count = ref.watch(counterProvider);
//
//
//     /// to listen the change of the provider
//     ref.listen(counterProvider, (previous, next) {
//       if(next == 5) {
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('The value is $next'),),);
//       }
//
//     });
//
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Riverpod Provider'),
//         actions: [
//           IconButton(
//             onPressed: () {
//              /// ref.invalidate(counterProvider);
//               ref.refresh(counterProvider);
//             },
//             icon: const Icon(Icons.refresh),
//           ),
//         ],
//       ),
//       body: Center(
//         child: Text(
//           count.toString(),
//           style: const TextStyle(
//             fontSize: 40,
//           ),
//         ),
//       ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             onPressed: () {
//               //ref.read(counterProvider.notifier).state += 1;
//
//               /// when value is changed of provider then we use the ref.read
//               ref.read(counterProvider.notifier).update((state) {
//                 return state = state + 1;
//               });
//
//               // ref.read(counterProvider.notifier).update((state) => state+1);
//             },
//             child: const Icon(Icons.add),
//           ),
//
//           const SizedBox(height: 20),
//           FloatingActionButton(
//             onPressed: () {
//               //ref.read(counterProvider.notifier).state -= 1;
//
//
//               /// when value is changed of provider then we use the ref.read
//               ref.read(counterProvider.notifier).update((state) {
//                 if(state <=0) {
//                   return state = 0;
//                 } else {
//                   return state = state - 1;
//                 }
//               });
//
//               // ref.read(counterProvider.notifier).update((state) => state-1);
//             },
//             child: const Icon(Icons.remove),
//           ),
//         ],
//       ),
//     );
//   }
// }
