import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter_app/providers/state_notifier_provider.dart';

final counterProvider = StateNotifierProvider<CounterDemo, int>((ref) {
  return CounterDemo();
});
