import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:raahi/injection.dart';
import 'package:raahi/presentation/core/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(AppWidget());
}