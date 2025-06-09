import 'package:flutter/material.dart';
import 'core/utils/cache_helper.dart';
import 'marketi_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  runApp(const MarketiApp());
}
