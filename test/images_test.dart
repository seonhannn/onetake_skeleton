import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:onetake_skeleton/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.ot).existsSync(), isTrue);
  });
}
