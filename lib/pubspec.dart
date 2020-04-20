// Dart imports:
import 'dart:io';

// Package imports:
import 'package:yaml/yaml.dart';

/// Read from the pubspec.yaml
YamlMap read() {
  final file = File('${Directory.current.path}/pubspec.yaml');
  if (file.existsSync()) {
    return loadYaml(file.readAsStringSync());
  }
  print('❌ Failed to read from pubspec.yaml');
}