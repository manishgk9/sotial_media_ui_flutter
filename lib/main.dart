import 'package:attachapp/wheretogo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Attacher',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(colorScheme: ColorScheme.dark()),
      home: const WhereTogo(),
    );
  }
}
