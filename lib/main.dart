import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/presentation/app_widget.dart';

import 'injection.dart';

Future<void> main() async {
  configureInjection(Environment.prod);
  runApp(MyApp());
}
