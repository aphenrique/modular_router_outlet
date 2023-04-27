import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste/main_module.dart';

import 'main_widget.dart';

void main() {
  return runApp(
    ModularApp(
      module: MainModule(),
      child: const MainWidget(),
    ),
  );
}
