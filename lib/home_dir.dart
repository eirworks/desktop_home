import 'dart:io' show Platform;

String? homeDir() {
  if (Platform.isLinux) {
    return Platform.environment['HOME'];
  } else if (Platform.isWindows) {
    return Platform.environment['USERPROFILE'];
  } else if (Platform.isMacOS) {
    return Platform.environment['HOME'];
  } else {
    return null;
  }
}
