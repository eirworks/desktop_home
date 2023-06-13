import 'dart:io';
import 'package:desktop_home/home_dir.dart';

import 'package:test/test.dart';

void main() {
  test("homeDir should not null or empty string", () {
    if (Platform.isLinux || Platform.isWindows || Platform.isMacOS) {
      expect(homeDir(), allOf([isNotNull, isNotEmpty]));
    }
  });
}
