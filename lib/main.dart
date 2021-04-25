import 'package:flutter/material.dart';
import 'screens/primary/home.dart';
import 'screens/search/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => PrimaryScreen(),
        '/search': (context) => SearchScreen()
      },
    );
  }
}
