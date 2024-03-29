import 'package:flutter/material.dart';
import 'package:my_app_list/pages/add_task.dart';
//import 'package:my_app_list/pages/tasks.dart';
import 'package:my_app_list/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddTask(),
    );
  }
}
