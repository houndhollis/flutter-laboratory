import 'package:flutter/material.dart';
import 'package:flutter_laboratory/dio_lab/home_screen_dio.dart';
import 'package:flutter_laboratory/singleton/home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreenDio(),
      ),
    );
  }
}