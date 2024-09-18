// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/app_them.dart';
import 'package:todo_app/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routName: (_) => HomeScreen(),
      },
      theme: AppThem.lightTheme,
      darkTheme: AppThem.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
