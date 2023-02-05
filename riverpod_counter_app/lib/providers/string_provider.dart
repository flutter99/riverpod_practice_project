import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameProvider = Provider<String>((ref) {
  return 'Bilal Ahmad';
});

final secondNameProvider = Provider<String>((ref) {
  return '2nd Provider Example';
});

final thirdNameProvider = Provider<String>((ref) {
  return '3rd Provider Example';
});
