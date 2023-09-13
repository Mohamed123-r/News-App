import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_app/pages/home_page.dart';
import 'package:new_app/services/news-services.dart';

void main() {

  runApp(const MyApp());
}

final dio = Dio();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
